# base on code found here :
# https://medium.com/@jaykumaran2217/real-time-head-pose-estimation-facemesh-with-mediapipe-and-opencv-a-comprehensive-guide-b63a2f40b7c6
import numpy as np
import cv2
import mediapipe as mp
from mediapipe.framework.formats import landmark_pb2
import time

mp_face_mesh = mp.solutions.face_mesh
face_mesh = mp_face_mesh.FaceMesh(
    min_detection_confidence=0.5, min_tracking_confidence=0.5)

mp_drawing = mp.solutions.drawing_utils

drawing_spec = mp_drawing.DrawingSpec(
    color=(128, 0, 128), thickness=2, circle_radius=1)

# Pattern definitions through list using : https://github.com/ManuelTS/augmentedFaceMeshIndices/blob/master
face_controllers_landmark_idx = [
    11, 12, 13, 14, 15, 16, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32]
left_eye_landmark = []
right_eye_landmark = []
left_eyebrow_landmark = []
right_eyebrow_landmark = []
mouth_left_landmark = []
mouth_right_landmark = []
mouth_open_close_landmark = []


cap = cv2.VideoCapture(0)

while cap.isOpened():
    # image capture routine
    success, image = cap.read()
    # flipped for selfie view
    image = cv2.cvtColor(cv2.flip(image, 1), cv2.COLOR_BGR2RGB)
    image.flags.writeable = False
    results = face_mesh.process(image)
    image.flags.writeable = True
    image = cv2.cvtColor(image, cv2.COLOR_RGB2BGR)

    # Create a list which only has the required landmarks

    landmark_tmp = []
    for index in range(0, len(face_controllers_landmark_idx)):
        landmark_tmp.append(
            results.multi_face_landmarks[0].landmark[face_controllers_landmark_idx[index]])

    face_controllers_landmarks = landmark_pb2.NormalizedLandmarkList(
        landmark=landmark_tmp)
    test_connection_tuple = frozenset(
        [(10, 11), (11, 12), (12, 13), (13, 14)])
    mp_drawing.draw_landmarks(image=image,
                              landmark_list=face_controllers_landmarks,
                              connections=mp_face_mesh.FACEMESH_TESSELATION,
                              landmark_drawing_spec=drawing_spec,
                              connection_drawing_spec=drawing_spec)
    cv2.imshow('Head Pose Detection', image)
    if cv2.waitKey(5) & 0xFF == 27:
        break
cap.release()

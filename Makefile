TARGET_TRACKER=p2p-tracker
TARGET_PEER=p2p-peer
CC=gcc
DEBUG=-g
OPT=-O0
WARN=-Wall
PTHREAD=-pthread
LUUID=-luuid
FLAGS=$(DEBUG) $(PTHREAD) $(OPT) $(WARN) $(LUUID)
SOURCE_CODE_TRACKER=tracker.c session.c
SOURCE_CODE_PEER=peer.c

tracker:
	$(CC) $(SOURCE_CODE_TRACKER) -o $(TARGET_TRACKER) $(FLAGS)

peer:
	$(CC) $(FLAGS) $(SOURCE_CODE_PEER) -o $(TARGET_PEER)

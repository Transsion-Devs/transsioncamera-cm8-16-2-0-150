.class public interface abstract Lcom/ss/android/vesdk/internal/IVEBingo;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addVideoClipWithAlgorithm([Ljava/lang/String;)I
.end method

.method public abstract beginGenVideoFrames(IIZLcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;)I
.end method

.method public abstract cancelGenVideoFrame(I)I
.end method

.method public abstract checkScoresFile(Ljava/lang/String;)I
.end method

.method public abstract clearNativeFromBingo()V
.end method

.method public abstract deleteVideoClipWithAlgorithm(I)I
.end method

.method public abstract genRandomSolve()I
.end method

.method public abstract genSmartCutting()I
.end method

.method public abstract getAllVideoRangeData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/clipparam/VEClipAlgorithmParam;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initBingoAlgorithm()I
.end method

.method public abstract initWithAlgorithm([Ljava/lang/String;Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)I
.end method

.method public abstract moveVideoClipWithAlgorithm(II)I
.end method

.method public abstract removeAllVideoSound()I
.end method

.method public abstract removeMusic(I)I
.end method

.method public abstract restoreAllVideoSound()I
.end method

.method public abstract setAIRotation(ILcom/ss/android/vesdk/ROTATE_DEGREE;)I
.end method

.method public abstract setInterimScoresToFile(Ljava/lang/String;)I
.end method

.method public abstract setMusicAndResult(Ljava/lang/String;IILcom/ss/android/vesdk/clipparam/VEAlgorithmPath;)I
.end method

.method public abstract setMusicCropRatio(I)I
.end method

.method public abstract updateAlgorithmFromNormal()I
.end method

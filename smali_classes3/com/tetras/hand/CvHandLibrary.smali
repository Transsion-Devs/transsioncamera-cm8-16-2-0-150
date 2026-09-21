.class public Lcom/tetras/hand/CvHandLibrary;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    const-string v0, "stmobile_hand"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 10
    const-string v0, "jni_stmobile_hand"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native convertColorSpace([BIII[BI)V
.end method

.method public static native cropNv21Data([BIIIIII[B)V
.end method

.method public static native cvGetVersion()Ljava/lang/String;
.end method

.method public static native cvHandCreateTrack(Ljava/lang/String;Ljava/lang/String;I)J
.end method

.method public static native cvHandDestroyTrack(J)V
.end method

.method public static native cvHandDetect(J[BIIIII[I)[Lcom/tetras/hand/model/CvHandInfo;
.end method

.method public static native cvHandGestureSwipeStatus()I
.end method

.method public static native cvHandTrack(J[BIIIII[I)[Lcom/tetras/hand/model/CvHandInfo;
.end method

.method public static native cvHandTrackReset(J)V
.end method

.method public static native getBGRADataFromBitmap(Landroid/graphics/Bitmap;[B)V
.end method

.method public static native getBGRFromBitmap(Landroid/graphics/Bitmap;[B)V
.end method

.method public static native initLicense(Ljava/lang/String;)I
.end method

.method public static native setDebug(Z)V
.end method

.method public static native setHandLimitCount(JI)V
.end method

.method public static native setTrackInterval(JI)V
.end method

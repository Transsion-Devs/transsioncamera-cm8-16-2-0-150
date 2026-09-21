.class public Lcom/stmobile/facebasejni/FaceAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const-string v0, "stm_facejni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 13
    const-string v0, "stmobile_facebase"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native compareFeature(JJJ[I)F
.end method

.method public static native createAttribute(Ljava/lang/String;I[I)J
.end method

.method public static native createDetector(II[I)J
.end method

.method public static native createTracker(IIIZ[I)J
.end method

.method public static native createTracker([Ljava/lang/String;IIIIZ[I)J
.end method

.method public static native createVerify(Ljava/lang/String;I[I)J
.end method

.method public static native destoryAttribute(J)V
.end method

.method public static native destoryDetector(J)V
.end method

.method public static native destoryTracker(J)V
.end method

.method public static native destoryVerify(J)V
.end method

.method public static native detect(J[BIIII[I)[Lcom/stmobile/facebasejni/common/FaceInfo;
.end method

.method public static native detectAttribute(J[BIII[Lcom/stmobile/facebasejni/common/FaceInfo;I[I)[Lcom/stmobile/facebasejni/common/FaceAttrInfo;
.end method

.method public static native getBgrByteFromBitmap(Landroid/graphics/Bitmap;[B)V
.end method

.method public static native getFeature(J[BIII[Lcom/stmobile/facebasejni/common/FaceInfo;I[I)[J
.end method

.method public static native getFeatureLength(J[I)I
.end method

.method public static getStatusCode(I)Lcom/stmobile/facebasejni/common/StatusCode;
    .registers 1

    .line 17
    invoke-static {p0}, Lcom/stmobile/facebasejni/common/StatusCode;->toStatusCode(I)Lcom/stmobile/facebasejni/common/StatusCode;

    move-result-object p0

    return-object p0
.end method

.method public static native getVersion(J[I)I
.end method

.method public static native initLicense(Ljava/lang/String;)I
.end method

.method public static native releaseFeature(JJ)V
.end method

.method public static native setDebug(Z)V
.end method

.method public static native setSmileBoundary(F)V
.end method

.method public static native track(J[BIIII[I)[Lcom/stmobile/facebasejni/common/FaceInfo;
.end method

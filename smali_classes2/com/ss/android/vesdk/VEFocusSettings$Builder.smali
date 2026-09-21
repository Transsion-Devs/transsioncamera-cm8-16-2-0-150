.class public final Lcom/ss/android/vesdk/VEFocusSettings$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEFocusSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mFocusSettings:Lcom/ss/android/vesdk/VEFocusSettings;


# direct methods
.method public constructor <init>(IIIIF)V
    .registers 12

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance v0, Lcom/ss/android/vesdk/VEFocusSettings;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/vesdk/VEFocusSettings;-><init>(IIIIF)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEFocusSettings$Builder;->mFocusSettings:Lcom/ss/android/vesdk/VEFocusSettings;

    return-void
.end method


# virtual methods
.method public build()Lcom/ss/android/vesdk/VEFocusSettings;
    .registers 1

    .line 297
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFocusSettings$Builder;->mFocusSettings:Lcom/ss/android/vesdk/VEFocusSettings;

    return-object p0
.end method

.method public setCameraFaceFocusPoint(Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFaceFocusPoint;)Lcom/ss/android/vesdk/VEFocusSettings$Builder;
    .registers 3

    .line 261
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFocusSettings$Builder;->mFocusSettings:Lcom/ss/android/vesdk/VEFocusSettings;

    # setter for: Lcom/ss/android/vesdk/VEFocusSettings;->mCameraFaceFocusPoint:Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFaceFocusPoint;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEFocusSettings;->access$402(Lcom/ss/android/vesdk/VEFocusSettings;Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFaceFocusPoint;)Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFaceFocusPoint;

    return-object p0
.end method

.method public setCameraFocusArea(Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFocusArea;)Lcom/ss/android/vesdk/VEFocusSettings$Builder;
    .registers 3

    .line 237
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFocusSettings$Builder;->mFocusSettings:Lcom/ss/android/vesdk/VEFocusSettings;

    # setter for: Lcom/ss/android/vesdk/VEFocusSettings;->mCameraFocusArea:Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFocusArea;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEFocusSettings;->access$202(Lcom/ss/android/vesdk/VEFocusSettings;Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFocusArea;)Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFocusArea;

    return-object p0
.end method

.method public setCameraMeteringArea(Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraMeteringArea;)Lcom/ss/android/vesdk/VEFocusSettings$Builder;
    .registers 3

    .line 249
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFocusSettings$Builder;->mFocusSettings:Lcom/ss/android/vesdk/VEFocusSettings;

    # setter for: Lcom/ss/android/vesdk/VEFocusSettings;->mCameraMeteringArea:Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraMeteringArea;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEFocusSettings;->access$302(Lcom/ss/android/vesdk/VEFocusSettings;Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraMeteringArea;)Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraMeteringArea;

    return-object p0
.end method

.method public setCoordinatesMode(Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;)Lcom/ss/android/vesdk/VEFocusSettings$Builder;
    .registers 3

    .line 286
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFocusSettings$Builder;->mFocusSettings:Lcom/ss/android/vesdk/VEFocusSettings;

    # setter for: Lcom/ss/android/vesdk/VEFocusSettings;->mCoordinatesMode:Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEFocusSettings;->access$602(Lcom/ss/android/vesdk/VEFocusSettings;Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;)Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;

    return-object p0
.end method

.method public setFocusCallback(Lcom/ss/android/vesdk/VEFocusSettings$IVEFocusCallback;)Lcom/ss/android/vesdk/VEFocusSettings$Builder;
    .registers 3

    .line 273
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFocusSettings$Builder;->mFocusSettings:Lcom/ss/android/vesdk/VEFocusSettings;

    # setter for: Lcom/ss/android/vesdk/VEFocusSettings;->mFocusCallback:Lcom/ss/android/vesdk/VEFocusSettings$IVEFocusCallback;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEFocusSettings;->access$502(Lcom/ss/android/vesdk/VEFocusSettings;Lcom/ss/android/vesdk/VEFocusSettings$IVEFocusCallback;)Lcom/ss/android/vesdk/VEFocusSettings$IVEFocusCallback;

    return-object p0
.end method

.method public setNeedFocus(Z)Lcom/ss/android/vesdk/VEFocusSettings$Builder;
    .registers 3

    .line 213
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFocusSettings$Builder;->mFocusSettings:Lcom/ss/android/vesdk/VEFocusSettings;

    # setter for: Lcom/ss/android/vesdk/VEFocusSettings;->mNeedFocus:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEFocusSettings;->access$002(Lcom/ss/android/vesdk/VEFocusSettings;Z)Z

    return-object p0
.end method

.method public setNeedMetering(Z)Lcom/ss/android/vesdk/VEFocusSettings$Builder;
    .registers 3

    .line 225
    iget-object v0, p0, Lcom/ss/android/vesdk/VEFocusSettings$Builder;->mFocusSettings:Lcom/ss/android/vesdk/VEFocusSettings;

    # setter for: Lcom/ss/android/vesdk/VEFocusSettings;->mNeedMetering:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEFocusSettings;->access$102(Lcom/ss/android/vesdk/VEFocusSettings;Z)Z

    return-object p0
.end method

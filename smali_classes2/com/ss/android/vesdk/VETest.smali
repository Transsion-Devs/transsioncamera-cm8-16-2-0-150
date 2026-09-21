.class public Lcom/ss/android/vesdk/VETest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VETest$Settings;
    }
.end annotation


# instance fields
.field protected mRecorder:Lcom/ss/android/vesdk/VERecorder;


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/VERecorder;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/ss/android/vesdk/VETest;->mRecorder:Lcom/ss/android/vesdk/VERecorder;

    return-void
.end method


# virtual methods
.method public enablePictureTestMode(Z)V
    .registers 3

    .line 28
    iget-object p0, p0, Lcom/ss/android/vesdk/VETest;->mRecorder:Lcom/ss/android/vesdk/VERecorder;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/vesdk/VERecorder;->enablePictureTestMode(ZZ)V

    return-void
.end method

.method public enablePictureTestMode(ZZ)V
    .registers 3

    .line 39
    iget-object p0, p0, Lcom/ss/android/vesdk/VETest;->mRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VERecorder;->enablePictureTestMode(ZZ)V

    return-void
.end method

.method public renderFrame(Landroid/graphics/Bitmap;II)V
    .registers 4

    .line 63
    iget-object p0, p0, Lcom/ss/android/vesdk/VETest;->mRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/VERecorder;->renderFrame(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method public renderFrame(Lcom/ss/android/vesdk/VETest$Settings;)V
    .registers 8

    .line 71
    iget-boolean v4, p1, Lcom/ss/android/vesdk/VETest$Settings;->autoCalculateRenderSize:Z

    if-nez v4, :cond_15

    iget v0, p1, Lcom/ss/android/vesdk/VETest$Settings;->renderWidth:I

    if-lez v0, :cond_d

    iget v0, p1, Lcom/ss/android/vesdk/VETest$Settings;->renderHeight:I

    if-lez v0, :cond_d

    goto :goto_15

    .line 72
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "must be set render width and height"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 74
    :cond_15
    :goto_15
    iget-object v1, p1, Lcom/ss/android/vesdk/VETest$Settings;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_25

    .line 78
    iget-object v0, p0, Lcom/ss/android/vesdk/VETest;->mRecorder:Lcom/ss/android/vesdk/VERecorder;

    iget v2, p1, Lcom/ss/android/vesdk/VETest$Settings;->renderWidth:I

    iget v3, p1, Lcom/ss/android/vesdk/VETest$Settings;->renderHeight:I

    iget-object v5, p1, Lcom/ss/android/vesdk/VETest$Settings;->renderCallback:Lcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/vesdk/VERecorder;->renderFrame(Landroid/graphics/Bitmap;IIZLcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;)V

    return-void

    .line 75
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bitmap is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public renderFrame(Ljava/lang/String;)V
    .registers 2

    .line 50
    iget-object p0, p0, Lcom/ss/android/vesdk/VETest;->mRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VERecorder;->renderFrame(Ljava/lang/String;)V

    return-void
.end method

.method public setMockPreviewSettings(Landroid/graphics/Bitmap;II)V
    .registers 4

    .line 96
    iget-object p0, p0, Lcom/ss/android/vesdk/VETest;->mRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/VERecorder;->setMockPreviewSettings(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method public setOnPictureTakenProxyListener(Lcom/ss/android/vesdk/VERecorder$OnPictureTakenProxyListener;)V
    .registers 2

    .line 89
    iget-object p0, p0, Lcom/ss/android/vesdk/VETest;->mRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VERecorder;->setOnPictureTakenProxyListener(Lcom/ss/android/vesdk/VERecorder$OnPictureTakenProxyListener;)V

    return-void
.end method

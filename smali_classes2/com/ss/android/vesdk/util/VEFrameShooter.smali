.class public Lcom/ss/android/vesdk/util/VEFrameShooter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/util/VEFrameShooter$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TERecorder"


# instance fields
.field private capture:Lcom/ss/android/vesdk/camera/ICameraCapture;

.field private innerRecorder:Lcom/ss/android/vesdk/TERecorder;

.field private mIsDuringScreenshot:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private recorder:Lcom/ss/android/vesdk/VERecorder;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ss/android/vesdk/util/VEFrameShooter;->mIsDuringScreenshot:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/vesdk/util/VEFrameShooter;)Lcom/ss/android/vesdk/camera/ICameraCapture;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/ss/android/vesdk/util/VEFrameShooter;->capture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    return-object p0
.end method

.method static synthetic access$002(Lcom/ss/android/vesdk/util/VEFrameShooter;Lcom/ss/android/vesdk/camera/ICameraCapture;)Lcom/ss/android/vesdk/camera/ICameraCapture;
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/ss/android/vesdk/util/VEFrameShooter;->capture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ss/android/vesdk/util/VEFrameShooter;)Lcom/ss/android/vesdk/VERecorder;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/ss/android/vesdk/util/VEFrameShooter;->recorder:Lcom/ss/android/vesdk/VERecorder;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ss/android/vesdk/util/VEFrameShooter;Lcom/ss/android/vesdk/VERecorder;)Lcom/ss/android/vesdk/VERecorder;
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/ss/android/vesdk/util/VEFrameShooter;->recorder:Lcom/ss/android/vesdk/VERecorder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ss/android/vesdk/util/VEFrameShooter;)Lcom/ss/android/vesdk/TERecorder;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/ss/android/vesdk/util/VEFrameShooter;->innerRecorder:Lcom/ss/android/vesdk/TERecorder;

    return-object p0
.end method

.method static synthetic access$202(Lcom/ss/android/vesdk/util/VEFrameShooter;Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/TERecorder;
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/ss/android/vesdk/util/VEFrameShooter;->innerRecorder:Lcom/ss/android/vesdk/TERecorder;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ss/android/vesdk/util/VEFrameShooter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/ss/android/vesdk/util/VEFrameShooter;->mIsDuringScreenshot:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static with(Lcom/ss/android/vesdk/camera/ICameraCapture;Lcom/ss/android/vesdk/VERecorder;)Lcom/ss/android/vesdk/util/VEFrameShooter;
    .registers 3

    .line 83
    new-instance v0, Lcom/ss/android/vesdk/util/VEFrameShooter$Builder;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/util/VEFrameShooter$Builder;-><init>(Lcom/ss/android/vesdk/camera/ICameraCapture;Lcom/ss/android/vesdk/VERecorder;)V

    invoke-virtual {v0}, Lcom/ss/android/vesdk/util/VEFrameShooter$Builder;->build()Lcom/ss/android/vesdk/util/VEFrameShooter;

    move-result-object p0

    return-object p0
.end method

.method public static withInnerRecorder(Lcom/ss/android/vesdk/camera/ICameraCapture;Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/util/VEFrameShooter;
    .registers 3

    .line 93
    new-instance v0, Lcom/ss/android/vesdk/util/VEFrameShooter$Builder;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/util/VEFrameShooter$Builder;-><init>(Lcom/ss/android/vesdk/camera/ICameraCapture;Lcom/ss/android/vesdk/TERecorder;)V

    invoke-virtual {v0}, Lcom/ss/android/vesdk/util/VEFrameShooter$Builder;->build()Lcom/ss/android/vesdk/util/VEFrameShooter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public shotScreen(IIZLcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;ZLcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;)I
    .registers 15

    .line 141
    iget-object v0, p0, Lcom/ss/android/vesdk/util/VEFrameShooter;->capture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz v0, :cond_81

    .line 144
    iget-object v0, p0, Lcom/ss/android/vesdk/util/VEFrameShooter;->recorder:Lcom/ss/android/vesdk/VERecorder;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/ss/android/vesdk/util/VEFrameShooter;->innerRecorder:Lcom/ss/android/vesdk/TERecorder;

    if-eqz v0, :cond_d

    goto :goto_15

    .line 145
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No recorder to render."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 147
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/ss/android/vesdk/util/VEFrameShooter;->mIsDuringScreenshot:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 148
    const-string p0, "TERecorder"

    const-string p1, "Last screenshot not complete"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 p1, -0x1

    .line 149
    invoke-interface {p4, p0, p1}, Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;->onShotScreen(Landroid/graphics/Bitmap;I)V

    return p1

    .line 152
    :cond_2a
    iget-object v0, p0, Lcom/ss/android/vesdk/util/VEFrameShooter;->mIsDuringScreenshot:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p3, :cond_36

    if-eqz p5, :cond_36

    move v4, v1

    goto :goto_38

    :cond_36
    const/4 p5, 0x0

    move v4, p5

    .line 155
    :goto_38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 156
    new-instance p5, Lcom/ss/android/vesdk/util/VEFrameShooter$1;

    invoke-direct {p5, p0, v2, v3, p4}, Lcom/ss/android/vesdk/util/VEFrameShooter$1;-><init>(Lcom/ss/android/vesdk/util/VEFrameShooter;JLcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;)V

    .line 169
    new-instance v0, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;-><init>()V

    sget-object v2, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;->RENDER_PICTURE_MODE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    .line 170
    invoke-virtual {v0, v2}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setGetFrameType(Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v0

    .line 171
    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setDrawToScreen(Z)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v0

    if-eqz p3, :cond_55

    .line 172
    sget-object p3, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;->SOME_EFFECT:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;

    goto :goto_57

    :cond_55
    sget-object p3, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;->NO_EFFECT:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;

    :goto_57
    invoke-virtual {v0, p3}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setEffectType(Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object p3

    sget-object v0, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;->CENTER_CROP:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

    .line 173
    invoke-virtual {p3, v0}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setFitMode(Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object p3

    new-instance v0, Lcom/ss/android/vesdk/VESize;

    invoke-direct {v0, p1, p2}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    .line 174
    invoke-virtual {p3, v0}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setTargetResolution(Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object p1

    .line 175
    invoke-virtual {p1, p5}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setGetFrameCallback(Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object p1

    .line 176
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->build()Lcom/ss/android/vesdk/VEGetFrameSettings;

    move-result-object v6

    .line 178
    new-instance v2, Lcom/ss/android/vesdk/util/VEFrameShooter$2;

    move-object v3, p0

    move-object v7, p4

    move-object v5, p6

    invoke-direct/range {v2 .. v7}, Lcom/ss/android/vesdk/util/VEFrameShooter$2;-><init>(Lcom/ss/android/vesdk/util/VEFrameShooter;ZLcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;Lcom/ss/android/vesdk/VEGetFrameSettings;Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;)V

    .line 200
    iget-object p0, v3, Lcom/ss/android/vesdk/util/VEFrameShooter;->capture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    invoke-interface {p0, v2}, Lcom/ss/android/vesdk/camera/ICameraCapture;->takePicture(Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)I

    move-result p0

    return p0

    .line 142
    :cond_81
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No Camera capture to capture"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public shotScreen(IIZLcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;ZLcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;Z)V
    .registers 11

    .line 113
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 114
    const-string v1, "width"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 115
    const-string v1, "height"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_f} :catch_20

    .line 116
    const-string v1, "behavior"

    const-string v2, "tag"

    if-eqz p7, :cond_23

    .line 117
    :try_start_15
    const-string p7, "takePicture"

    invoke-virtual {v0, v2, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string p7, "vesdk_event_recorder_take_picture"

    invoke-static {p7, v0, v1}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_31

    :catch_20
    move-exception v0

    move-object p7, v0

    goto :goto_2e

    .line 120
    :cond_23
    const-string p7, "shotScreen"

    invoke-virtual {v0, v2, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string p7, "vesdk_event_recorder_shot_screen"

    invoke-static {p7, v0, v1}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_2d} :catch_20

    goto :goto_31

    .line 125
    :goto_2e
    invoke-virtual {p7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    :goto_31
    invoke-virtual/range {p0 .. p6}, Lcom/ss/android/vesdk/util/VEFrameShooter;->shotScreen(IIZLcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;ZLcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;)I

    return-void
.end method

.class public Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;
.super Lcom/transsion/camera/app/common/preview/PreviewCallbacker;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IGLExecutor;
.implements Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot;
.implements Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewStream;
.implements Lcom/transsion/camera/feature/mode/aiartmuseum/ui/IPreviewWindowController$IPreviewWindowListener;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mCameraId:Ljava/lang/String;

.field private mCount:I

.field private mEffect:Ljava/lang/String;

.field private mEffectValue:Ljava/lang/String;

.field private mOrientation:I

.field private mPartial:Ljava/lang/String;

.field private mPreviewShotCallback:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot$IPreviewShotCallback;

.field private final mPreviewWindowController:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/IPreviewWindowController;

.field private mRenderManager:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;

.field private mStreamCallback:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewStream$IStreamCallback;

.field private mStyle:Ljava/lang/String;

.field private mTime:J

.field private mTranslateX:F

.field private mTranslateY:F

.field private mTravel:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$Q3GwxjmqnQ1hoV4pWW5lgu9OmiM(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->lambda$updateEffectValue$0(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIArtMuseumPreview"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Ljava/lang/String;Lcom/transsion/camera/feature/mode/aiartmuseum/ui/IPreviewWindowController;)V
    .registers 5

    .line 69
    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;-><init>()V

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mOrientation:I

    .line 70
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 71
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mCameraId:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mPreviewWindowController:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/IPreviewWindowController;

    return-void
.end method

.method private initRenderManager()V
    .registers 4

    .line 188
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initRenderManager mRenderManager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mRenderManager:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mRenderManager:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;

    if-nez v0, :cond_65

    .line 190
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mPreviewWindowController:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/IPreviewWindowController;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IGLExecutor;Lcom/transsion/camera/feature/mode/aiartmuseum/ui/IPreviewWindowController;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mRenderManager:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;

    .line 191
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->init(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mRenderManager:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;

    iget v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->updateOrientation(I)V

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mRenderManager:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;

    iget v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mTranslateX:F

    iget v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mTranslateY:F

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->onPreviewWindowTranslate(FF)V

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mStreamCallback:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewStream$IStreamCallback;

    if-eqz v0, :cond_43

    .line 196
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mRenderManager:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->previewStream(Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewStream$IStreamCallback;)V

    .line 198
    :cond_43
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mPreviewShotCallback:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot$IPreviewShotCallback;

    if-eqz v0, :cond_4c

    .line 199
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mRenderManager:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->previewShot(Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot$IPreviewShotCallback;)V

    .line 202
    :cond_4c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mEffect:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mEffectValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mRenderManager:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mEffect:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mEffectValue:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->updateEffect(Ljava/lang/String;Ljava/lang/String;)V

    :cond_65
    return-void
.end method

.method private synthetic lambda$updateEffectValue$0(Ljava/lang/String;)V
    .registers 5

    .line 148
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEffectValueExecute mRenderManager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mRenderManager:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", effectValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mRenderManager:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;

    if-eqz v0, :cond_2a

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mEffect:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->updateEffect(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method private showFps()V
    .registers 7

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 294
    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2c

    .line 295
    sget-object v2, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AIArtMuseumPreviewFps "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->logDrawing(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 296
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mTime:J

    const/4 v0, 0x0

    .line 297
    iput v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mCount:I

    return-void

    .line 299
    :cond_2c
    iget v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mCount:I

    return-void
.end method

.method private unInitRenderManager()V
    .registers 4

    .line 209
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unInitRenderManager mRenderManager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mRenderManager:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mRenderManager:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;

    if-eqz v0, :cond_23

    .line 211
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->unInit()V

    const/4 v0, 0x0

    .line 212
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mRenderManager:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;

    :cond_23
    return-void
.end method

.method private updateEffectValue()V
    .registers 5

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mEffect:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 119
    sget-object p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "updateEffectValue mEffect is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 125
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mEffect:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_9e

    goto :goto_3f

    :sswitch_1f
    const-string v1, "key_ai_art_museum_partial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_3f

    :cond_28
    const/4 v2, 0x2

    goto :goto_3f

    :sswitch_2a
    const-string v1, "key_ai_art_museum_travel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto :goto_3f

    :cond_33
    const/4 v2, 0x1

    goto :goto_3f

    :sswitch_35
    const-string v1, "key_ai_art_museum_style"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v2, 0x0

    :goto_3f
    packed-switch v2, :pswitch_data_ac

    .line 140
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid effect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mEffect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_64

    .line 135
    :pswitch_5c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mPartial:Ljava/lang/String;

    goto :goto_64

    .line 131
    :pswitch_5f
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mTravel:Ljava/lang/String;

    goto :goto_64

    .line 127
    :pswitch_62
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mStyle:Ljava/lang/String;

    .line 144
    :goto_64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9d

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mEffectValue:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9d

    .line 145
    sget-object v1, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateEffectValue mEffectValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mEffectValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - > effectValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 146
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mEffectValue:Ljava/lang/String;

    .line 147
    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->execute(Ljava/lang/Runnable;)V

    :cond_9d
    return-void

    :sswitch_data_9e
    .sparse-switch
        0xa1e8ef7 -> :sswitch_35
        0x3b413694 -> :sswitch_2a
        0x3d390147 -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .registers 8

    .line 219
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->aiArtMuseumPreviewDisable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 223
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mRenderManager:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;

    if-nez v0, :cond_d

    return v1

    .line 227
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 229
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mRenderManager:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->draw(Landroid/graphics/SurfaceTexture;III)Z

    .line 231
    sget-object p1, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AIArtMuseumPreviewDraw cost: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "ms"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->logDrawing(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->showFps()V

    const/4 p0, 0x1

    return p0
.end method

.method public drawOffScreen(Landroid/graphics/SurfaceTexture;IIII)Z
    .registers 8

    .line 240
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->aiArtMuseumPreviewDisable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 244
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mRenderManager:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;

    if-nez p0, :cond_d

    return v1

    .line 248
    :cond_d
    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->drawOffScreen(Landroid/graphics/SurfaceTexture;IIII)Z

    move-result p0

    return p0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 2

    .line 253
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final modeInit()V
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v0

    if-nez v0, :cond_10

    .line 78
    sget-object p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "modeInit operator is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 81
    :cond_10
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    return-void
.end method

.method public modeInitCallback()V
    .registers 1

    .line 165
    invoke-super {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->modeInitCallback()V

    .line 166
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->initRenderManager()V

    return-void
.end method

.method public final modeUnInit()V
    .registers 2

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p0

    if-nez p0, :cond_10

    .line 87
    sget-object p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "modeUnInit operator is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 90
    :cond_10
    invoke-interface {p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeUninit()V

    return-void
.end method

.method public modeUninitCallback()V
    .registers 1

    .line 177
    invoke-super {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->modeUninitCallback()V

    .line 178
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->unInitRenderManager()V

    return-void
.end method

.method public onPreviewChange()V
    .registers 1

    .line 276
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mRenderManager:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;

    if-nez p0, :cond_5

    return-void

    .line 279
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->onPreviewChange()V

    return-void
.end method

.method public onPreviewWindowTranslate(FF)V
    .registers 3

    .line 284
    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mTranslateX:F

    .line 285
    iput p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mTranslateY:F

    .line 286
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mRenderManager:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;

    if-nez p0, :cond_9

    return-void

    .line 289
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->onPreviewWindowTranslate(FF)V

    return-void
.end method

.method public previewShot(Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot$IPreviewShotCallback;)V
    .registers 2

    .line 267
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mPreviewShotCallback:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot$IPreviewShotCallback;

    .line 268
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mRenderManager:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;

    if-nez p0, :cond_7

    return-void

    .line 271
    :cond_7
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->previewShot(Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot$IPreviewShotCallback;)V

    return-void
.end method

.method public previewStream(Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewStream$IStreamCallback;)V
    .registers 2

    .line 258
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mStreamCallback:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewStream$IStreamCallback;

    .line 259
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mRenderManager:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;

    if-nez p0, :cond_7

    return-void

    .line 262
    :cond_7
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->previewStream(Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewStream$IStreamCallback;)V

    return-void
.end method

.method public surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 171
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V

    .line 172
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->initRenderManager()V

    return-void
.end method

.method public surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 183
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V

    .line 184
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->unInitRenderManager()V

    return-void
.end method

.method public updateEffect(Ljava/lang/String;)V
    .registers 5

    .line 94
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEffect effect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mEffect:Ljava/lang/String;

    .line 96
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->updateEffectValue()V

    return-void
.end method

.method public updateOrientation(I)V
    .registers 2

    .line 157
    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mOrientation:I

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mRenderManager:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;

    if-eqz p0, :cond_9

    .line 159
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->updateOrientation(I)V

    :cond_9
    return-void
.end method

.method public updatePartial(Ljava/lang/String;)V
    .registers 5

    .line 112
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePartial partial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 113
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mPartial:Ljava/lang/String;

    .line 114
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->updateEffectValue()V

    return-void
.end method

.method public updateStyle(Ljava/lang/String;)V
    .registers 5

    .line 100
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStyle style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 101
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mStyle:Ljava/lang/String;

    .line 102
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->updateEffectValue()V

    return-void
.end method

.method public updateTravel(Ljava/lang/String;)V
    .registers 5

    .line 106
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTravel travel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 107
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->mTravel:Ljava/lang/String;

    .line 108
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->updateEffectValue()V

    return-void
.end method

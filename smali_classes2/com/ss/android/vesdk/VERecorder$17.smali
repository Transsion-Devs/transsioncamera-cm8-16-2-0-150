.class Lcom/ss/android/vesdk/VERecorder$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VERecorder;->setOnFrameAvailableListener(Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerNew;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VERecorder;

.field final synthetic val$listener:Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerNew;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VERecorder;Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerNew;)V
    .registers 3

    .line 5052
    iput-object p1, p0, Lcom/ss/android/vesdk/VERecorder$17;->this$0:Lcom/ss/android/vesdk/VERecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/VERecorder$17;->val$listener:Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnFrameAvailable(Lcom/ss/android/ttve/model/VEFrame;)V
    .registers 24

    move-object/from16 v0, p0

    .line 5055
    iget-object v1, v0, Lcom/ss/android/vesdk/VERecorder$17;->val$listener:Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerNew;

    if-nez v1, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_42

    .line 5056
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ttve/model/VEFrame;->getFormat()Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    move-result-object v1

    sget-object v2, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_OpenGL_RGBA8:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    if-ne v1, v2, :cond_42

    .line 5057
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ttve/model/VEFrame;->getFrame()Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    move-result-object v1

    check-cast v1, Lcom/ss/android/ttve/model/VEFrame$TextureFrame;

    .line 5058
    iget-object v2, v0, Lcom/ss/android/vesdk/VERecorder$17;->val$listener:Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerNew;

    .line 5059
    invoke-virtual {v1}, Lcom/ss/android/ttve/model/VEFrame$TextureFrame;->getContext()Landroid/opengl/EGLContext;

    move-result-object v3

    .line 5060
    invoke-virtual {v1}, Lcom/ss/android/ttve/model/VEFrame$TextureFrame;->getTexID()I

    move-result v4

    .line 5062
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ttve/model/VEFrame;->getWidth()I

    move-result v6

    .line 5063
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ttve/model/VEFrame;->getHeight()I

    move-result v7

    .line 5064
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ttve/model/VEFrame;->getTimeStamp()J

    move-result-wide v8

    .line 5065
    iget-object v0, v0, Lcom/ss/android/vesdk/VERecorder$17;->this$0:Lcom/ss/android/vesdk/VERecorder;

    iget-object v0, v0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TERecorderBase;->getSegmentFrameTimeUS()J

    move-result-wide v0

    :goto_37
    move-wide v10, v0

    goto :goto_3c

    :cond_39
    const-wide/16 v0, 0x0

    goto :goto_37

    :goto_3c
    const/16 v5, 0xa

    .line 5058
    invoke-interface/range {v2 .. v11}, Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerNew;->OnFrameAvailable(Landroid/opengl/EGLContext;IIIIJJ)V

    return-void

    .line 5067
    :cond_42
    iget-object v12, v0, Lcom/ss/android/vesdk/VERecorder$17;->val$listener:Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerNew;

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xa

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v12 .. v21}, Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerNew;->OnFrameAvailable(Landroid/opengl/EGLContext;IIIIJJ)V

    return-void
.end method

.method public config()Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt$Config;
    .registers 3

    .line 5080
    new-instance v0, Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt$Config;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt$Config;-><init>()V

    .line 5081
    sget-object v1, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_OpenGL_RGBA8:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    iput-object v1, v0, Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt$Config;->format:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    .line 5082
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder$17;->val$listener:Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerNew;

    if-eqz p0, :cond_15

    invoke-interface {p0}, Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerNew;->shouldFrameRendered()Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    iput-boolean p0, v0, Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt$Config;->shouldFrameRendered:Z

    return-object v0
.end method

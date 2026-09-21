.class Lcom/ss/android/vesdk/VERecorder$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VERecorder;->setOnFrameAvailableListener(Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VERecorder;

.field final synthetic val$listener:Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListener;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VERecorder;Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListener;)V
    .registers 3

    .line 5008
    iput-object p1, p0, Lcom/ss/android/vesdk/VERecorder$16;->this$0:Lcom/ss/android/vesdk/VERecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/VERecorder$16;->val$listener:Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnFrameAvailable(Lcom/ss/android/ttve/model/VEFrame;)V
    .registers 20

    move-object/from16 v0, p0

    .line 5011
    iget-object v1, v0, Lcom/ss/android/vesdk/VERecorder$16;->val$listener:Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListener;

    if-nez v1, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_33

    .line 5012
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ttve/model/VEFrame;->getFormat()Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    move-result-object v1

    sget-object v2, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_OpenGL_RGBA8:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    if-ne v1, v2, :cond_33

    .line 5013
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ttve/model/VEFrame;->getFrame()Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    move-result-object v1

    check-cast v1, Lcom/ss/android/ttve/model/VEFrame$TextureFrame;

    .line 5014
    iget-object v2, v0, Lcom/ss/android/vesdk/VERecorder$16;->val$listener:Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListener;

    .line 5015
    invoke-virtual {v1}, Lcom/ss/android/ttve/model/VEFrame$TextureFrame;->getContext()Landroid/opengl/EGLContext;

    move-result-object v3

    .line 5016
    invoke-virtual {v1}, Lcom/ss/android/ttve/model/VEFrame$TextureFrame;->getTexID()I

    move-result v4

    .line 5018
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ttve/model/VEFrame;->getWidth()I

    move-result v6

    .line 5019
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ttve/model/VEFrame;->getHeight()I

    move-result v7

    .line 5020
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ttve/model/VEFrame;->getTimeStamp()J

    move-result-wide v8

    const/16 v5, 0xa

    .line 5014
    invoke-interface/range {v2 .. v9}, Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListener;->OnFrameAvailable(Landroid/opengl/EGLContext;IIIIJ)V

    return-void

    .line 5023
    :cond_33
    iget-object v10, v0, Lcom/ss/android/vesdk/VERecorder$16;->val$listener:Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListener;

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xa

    const/4 v14, 0x0

    invoke-interface/range {v10 .. v17}, Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListener;->OnFrameAvailable(Landroid/opengl/EGLContext;IIIIJ)V

    return-void
.end method

.method public config()Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt$Config;
    .registers 3

    .line 5036
    new-instance v0, Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt$Config;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt$Config;-><init>()V

    .line 5037
    sget-object v1, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_OpenGL_RGBA8:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    iput-object v1, v0, Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt$Config;->format:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    .line 5038
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder$16;->val$listener:Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListener;

    if-eqz p0, :cond_15

    invoke-interface {p0}, Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListener;->shouldFrameRendered()Z

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

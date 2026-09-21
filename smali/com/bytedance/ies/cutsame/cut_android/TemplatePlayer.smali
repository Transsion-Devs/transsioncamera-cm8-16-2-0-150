.class public Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;
.super Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$VEGetImageListener;,
        Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;,
        Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;
    }
.end annotation


# static fields
.field public static final MATERIAL_ID_TEXT_EPILOGUE:Ljava/lang/String; = "MATERIAL_ID_TEXT_EPILOGUE"

.field public static final SEGMENT_ID_TEXT_EPILOGUE:Ljava/lang/String; = "SEGMENT_ID_TEXT_EPILOGUE"

.field public static final SEGMENT_ID_VIDEO_MAIN_TRACK:Ljava/lang/String; = "SEGMENT_ID_VIDEO_MAIN_TRACK"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private iCutReporter:Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter;

.field private nativePlayer:J

.field private newErrorListener:Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerErrorListener;

.field private newStateListener:Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;

.field private outStatusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

.field private prepareListener:Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;

.field private source:Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;

.field private statusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

.field private veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 73
    sget-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;->init()V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 277
    invoke-direct {p0}, Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer$Stub;-><init>()V

    .line 164
    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$1;

    invoke-direct {v0, p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$1;-><init>(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)V

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->statusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

    .line 278
    invoke-static {}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cut.TemplatePlayer_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    const-wide/16 v3, 0x2710

    rem-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constructor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Ljava/lang/String;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->outStatusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

    return-object p0
.end method

.method static synthetic access$1000(J)V
    .registers 2

    .line 64
    invoke-static {p0, p1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeReleasePtr(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->newStateListener:Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;

    return-object p0
.end method

.method static synthetic access$300(J)V
    .registers 2

    .line 64
    invoke-static {p0, p1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePrepare(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->iCutReporter:Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter;

    return-object p0
.end method

.method static synthetic access$500(J)I
    .registers 2

    .line 64
    invoke-static {p0, p1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeGetErrorCode(J)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->prepareListener:Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;

    return-object p0
.end method

.method static synthetic access$700(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;
    .registers 2

    .line 64
    invoke-static {p0, p1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeGetTemplateModel(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(J)Ljava/lang/String;
    .registers 2

    .line 64
    invoke-static {p0, p1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeGetErrorMsg(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerErrorListener;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->newErrorListener:Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerErrorListener;

    return-object p0
.end method

.method private logMethodStack(I)V
    .registers 3

    .line 922
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object p1

    .line 923
    const-string v0, "TemplatePlayer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_20

    .line 925
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method private makeSureNativeValid()Z
    .registers 5

    .line 930
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    const/4 v0, 0x2

    .line 931
    invoke-direct {p0, v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->logMethodStack(I)V

    .line 932
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;

    const-string v0, "makeSureNativeValid find nativePlayer is 0"

    invoke-static {p0, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_15
    const/4 p0, 0x1

    return p0
.end method

.method private makeSureVEEditorAdapterValid()Z
    .registers 6

    .line 1919
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureNativeValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1921
    :cond_8
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    return v2

    .line 1922
    :cond_e
    iget-wide v3, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-static {v3, v4}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeGetVEEditorAdapter(J)Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    if-eqz v0, :cond_19

    return v2

    :cond_19
    return v1
.end method

.method static native nativeAddMetaData(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeAddWatermark(JLjava/lang/String;FFF)V
.end method

.method private static native nativeChangeText(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeClone(J)J
.end method

.method private static native nativeCompile(JLjava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/CompileListener;)I
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetCurrentPosition(J)J
.end method

.method private static native nativeGetDuration(J)J
.end method

.method private static native nativeGetErrorCode(J)I
.end method

.method private static native nativeGetErrorMsg(J)Ljava/lang/String;
.end method

.method private static native nativeGetJsonFilePath(J)Ljava/lang/String;
.end method

.method private static native nativeGetState(J)I
.end method

.method private static native nativeGetTailSegment(J)Ljava/lang/String;
.end method

.method private static native nativeGetTemplateModel(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;
.end method

.method private static native nativeGetTextOffsetTimeOnSegment(JLjava/lang/String;Ljava/lang/String;)J
.end method

.method private static native nativeGetTextPosition(JLjava/lang/String;)[F
.end method

.method private static native nativeGetTextSegmentId(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeGetTextSegments(J)Ljava/lang/String;
.end method

.method private static native nativeGetVEEditorAdapter(J)Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;
.end method

.method private static native nativeGetVideoSegmentId(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeGetVideoSegments(J)Ljava/lang/String;
.end method

.method private static native nativeInit(JLandroid/content/Context;Ljava/lang/String;)I
.end method

.method private static native nativePause(J)V
.end method

.method private static native nativePrepare(J)V
.end method

.method private static native nativeReleasePtr(J)V
.end method

.method private static native nativeRemoveWatermark(J)V
.end method

.method private static native nativeSetAudioPath(JLjava/lang/String;Ljava/lang/String;J)I
.end method

.method private static native nativeSetAudioTimeClip(JLjava/lang/String;JJJJ)I
.end method

.method private static native nativeSetDataSource(JJ)I
.end method

.method private static native nativeSetEpilogueSource(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeSetOnInfoListener(JLcom/bytedance/ies/cutsame/cut_android/TemplateInfoListener;)V
.end method

.method private static native nativeSetPlayerStatusListener(JLcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;)V
.end method

.method private static native nativeSetSinglePlaySource(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeSetSurface(JLandroid/view/SurfaceView;)V
.end method

.method private static native nativeSetVideoPath(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeSetVideoPreviewConfig(JLjava/lang/String;)V
.end method

.method private static native nativeSetVideoSpaceClip(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeSetVideoTimeClip(JLjava/lang/String;J)I
.end method

.method private static native nativeStart(J)V
.end method

.method private static native nativeStop(J)V
.end method

.method private static native nativeTextAnimSwitch(JLjava/lang/String;Z)V
.end method

.method private static native nativeUpdateVideoKeyframe(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public addAmazingFilter(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FIJJ)I
    .registers 25

    .line 1142
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1143
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"intensity\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v6, p4

    move-object/from16 v4, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-virtual/range {v0 .. v12}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->addAmazingFilter(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJI)I

    move-result v0

    return v0

    :cond_34
    const/16 v0, -0x16

    return v0
.end method

.method public addAmazingFilter(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJ)I
    .registers 25

    .line 1188
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1189
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    const/4 v12, 0x1

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v6, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-virtual/range {v0 .. v12}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->addAmazingFilter(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJI)I

    move-result v0

    return v0

    :cond_1e
    const/16 v0, -0x16

    return v0
.end method

.method public addAudioFade(Ljava/lang/String;JJ)I
    .registers 7

    .line 1587
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1588
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual/range {p0 .. p5}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->addAudioFade(Ljava/lang/String;JJ)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public addAudioTrack(Ljava/lang/String;Ljava/lang/String;IIII)I
    .registers 8

    .line 1126
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1127
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual/range {p0 .. p6}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->addAudioTrack(Ljava/lang/String;Ljava/lang/String;IIII)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public addAudioTrack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZF)I
    .registers 21

    .line 1118
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1119
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    move/from16 v1, p4

    int-to-long v4, v1

    move/from16 v1, p5

    int-to-long v6, v1

    move/from16 v1, p6

    int-to-long v8, v1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v11, p7

    move/from16 v10, p8

    invoke-virtual/range {v0 .. v11}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->addAudioTrack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJFZ)I

    move-result v0

    return v0

    :cond_1d
    const/16 v0, -0x16

    return v0
.end method

.method public addInfoEffect(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZI)I
    .registers 11

    .line 1180
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1181
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual/range {p0 .. p9}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->addInfoEffect(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZI)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public addInfoSticker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFJJFFZZIJ)I
    .registers 35

    .line 1491
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_29

    move-object/from16 v0, p0

    .line 1492
    iget-object v1, v0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move-wide/from16 v16, p15

    invoke-virtual/range {v1 .. v17}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->addInfoSticker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFJJFFZZIJ)I

    move-result v0

    return v0

    :cond_29
    const/16 v0, -0x16

    return v0
.end method

.method public addKeyframeListener(Lcom/bytedance/ies/cutsame/veadapter/KeyframeListener;)Ljava/lang/Boolean;
    .registers 3

    .line 1927
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1928
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->addKeyframeListener(Lcom/bytedance/ies/cutsame/veadapter/KeyframeListener;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 1930
    :cond_d
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;

    const-string p1, "VEEditorAdapter is invalid"

    invoke-static {p0, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public addMetadata(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 807
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeAddMetaData(JLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public addSubVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;)I
    .registers 34

    move-object/from16 v0, p9

    .line 1728
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v1

    if-eqz v1, :cond_4d

    move-object/from16 v1, p0

    .line 1729
    iget-object v1, v1, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    iget-object v5, v0, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->blendModePath:Ljava/lang/String;

    move/from16 v2, p4

    int-to-long v6, v2

    move/from16 v2, p5

    int-to-long v8, v2

    move/from16 v2, p6

    int-to-long v10, v2

    move/from16 v2, p7

    int-to-long v12, v2

    iget v15, v0, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->alpha:F

    iget v2, v0, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->degree:F

    iget v3, v0, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->scaleFactor:F

    iget v4, v0, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->transX:F

    iget v14, v0, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->transY:F

    move-object/from16 v16, v1

    iget v1, v0, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->mirror:I

    move/from16 v20, v1

    iget-object v1, v0, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->animPath:Ljava/lang/String;

    move-object/from16 v21, v1

    iget v1, v0, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->animStartTime:I

    iget v0, v0, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->animEndTime:I

    move/from16 v23, v0

    move/from16 v22, v1

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v14

    move-object/from16 v1, v16

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v14, p8

    move/from16 v16, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v23}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->addSubVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJIFFFFFILjava/lang/String;II)I

    move-result v0

    return v0

    :cond_4d
    const/16 v0, -0x16

    return v0
.end method

.method public addTextSticker(Ljava/lang/String;Ljava/lang/String;JJJFFZZFFJ)I
    .registers 35

    .line 1409
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_27

    move-object/from16 v0, p0

    .line 1410
    iget-object v1, v0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move-wide/from16 v16, p15

    invoke-virtual/range {v1 .. v17}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->addTextSticker(Ljava/lang/String;Ljava/lang/String;JJJFFZZFFJ)I

    move-result v0

    return v0

    :cond_27
    const/16 v0, -0x16

    return v0
.end method

.method public addTextTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 1441
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1442
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->addTextTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public addVideo([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[I[I)I
    .registers 7

    .line 1321
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1322
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual/range {p0 .. p5}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->addVideo([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[I[I)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public addVideoAtLast(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 6

    .line 1329
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1330
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->addVideoAtLast(Ljava/lang/String;Ljava/lang/String;II)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public addWatermark(Ljava/lang/String;FFF)V
    .registers 12

    .line 654
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureNativeValid()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 655
    iget-wide v1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeAddWatermark(JLjava/lang/String;FFF)V

    :cond_f
    return-void
.end method

.method public adjustInfoSticker(Ljava/lang/String;FFFFIFIIZZZZ)I
    .registers 15

    .line 1502
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1503
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual/range {p0 .. p13}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->adjustInfoSticker(Ljava/lang/String;FFFFIFIIZZZZ)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public adjustStickerScale(Ljava/lang/String;F)F
    .registers 4

    .line 1519
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1520
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->adjustStickerScale(Ljava/lang/String;F)F

    move-result p0

    return p0

    :cond_d
    const/high16 p0, -0x3e500000    # -22.0f

    return p0
.end method

.method public adjustVideo(Ljava/lang/String;IIFZ[F[F)I
    .registers 9

    .line 1535
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1536
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual/range {p0 .. p7}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->adjustVideo(Ljava/lang/String;IIFZ[F[F)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public adjustVideoVolume(Ljava/lang/String;F)I
    .registers 4

    .line 1110
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->getVideoSegmentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 1111
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x0

    .line 1112
    invoke-virtual {p0, p1, v0, p2}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->adjustVolume(Ljava/lang/String;IF)I

    move-result p0

    return p0

    :cond_12
    const/16 p0, -0x16

    return p0
.end method

.method public adjustVolume(Ljava/lang/String;IF)I
    .registers 5

    .line 1102
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1103
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->adjustVolume(Ljava/lang/String;IF)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public cancelCompile()I
    .registers 2

    .line 1304
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1305
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->cancelCompile()V

    const/4 p0, 0x0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public cancelGetVideoFrames()I
    .registers 2

    .line 1555
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1556
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->cancelGetVideoFrames()I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public changeCanvas(II)I
    .registers 4

    .line 1395
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1396
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->changeCanvas(II)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public changeText(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 870
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeText, materialId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureNativeValid()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 872
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeChangeText(JLjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2b
    const/16 p0, -0x16

    return p0
.end method

.method public changeVoice(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5

    .line 1094
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1095
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p3, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->changeVoice(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public chroma(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6

    .line 1165
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1166
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->chroma(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public compile(Ljava/lang/String;Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;Lcom/bytedance/ies/cutsame/veadapter/CompileListener;)I
    .registers 7

    .line 889
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compile, outFilePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureNativeValid()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 891
    invoke-virtual {p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->toJson()Ljava/lang/String;

    move-result-object p2

    .line 892
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeCompile(JLjava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/CompileListener;)I

    move-result p0

    return p0

    :cond_27
    const/16 p0, -0x16

    return p0
.end method

.method public copyVideo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[I[I)I
    .registers 7

    .line 1345
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1346
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual/range {p0 .. p5}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->copyVideo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[I[I)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public cropVideo(Ljava/lang/String;[F)I
    .registers 4

    .line 1387
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1388
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->cropVideo(Ljava/lang/String;[F)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public deleteAmazingFilter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 1205
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1206
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->deleteAmazingFilter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public deleteAmazingFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 1197
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1198
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p2, p3, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->deleteAmazingFilter([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public deleteAudioTrack(Ljava/lang/String;)I
    .registers 3

    .line 1240
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1241
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->deleteAudioTrack(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public deleteInfoSticker(Ljava/lang/String;)I
    .registers 3

    .line 1473
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1474
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->deleteInfoSticker(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public destroyPlayer()V
    .registers 5

    .line 902
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;

    const-string v1, "destroyPlayer"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_12

    .line 904
    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeDestroy(J)V

    :cond_12
    return-void
.end method

.method public enableStickerAnimationPreview(Ljava/lang/String;Z)I
    .registers 4

    .line 1694
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1695
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->enableStickerAnimationPreview(Ljava/lang/String;Z)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public filterIndexOfSegment(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5

    .line 2006
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2007
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->filterIndexOfSegment(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method protected finalize()V
    .registers 5

    .line 941
    :try_start_0
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    .line 942
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;

    const-string v1, "You forget to release TemplatePlayer !!"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeReleasePtr(J)V

    .line 945
    iput-wide v2, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    goto :goto_19

    :catchall_17
    move-exception v0

    goto :goto_1d

    .line 948
    :cond_19
    :goto_19
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :goto_1d
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public flushSeekCmd()I
    .registers 2

    .line 1670
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1671
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->flushSeekCmd()I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public forceRefreshCurrentFrame()I
    .registers 2

    .line 1073
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1074
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->forceRefreshCurrentFrame()I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public getAllVideoFileInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/clipparam/VEClipVideoFileInfoParam;",
            ">;"
        }
    .end annotation

    .line 2033
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2034
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getAllVideoFileInfos()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCanvasSize()Lcom/bytedance/ies/cutsame/util/Size;
    .registers 2

    .line 1264
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1265
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getCanvasSize()Lcom/bytedance/ies/cutsame/util/Size;

    move-result-object p0

    return-object p0

    .line 1267
    :cond_d
    new-instance p0, Lcom/bytedance/ies/cutsame/util/Size;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lcom/bytedance/ies/cutsame/util/Size;-><init>(II)V

    return-object p0
.end method

.method public getConfigCanvasSize()Lcom/bytedance/ies/cutsame/util/Size;
    .registers 2

    .line 1272
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1273
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getConfigCanvasSize()Lcom/bytedance/ies/cutsame/util/Size;

    move-result-object p0

    return-object p0

    .line 1275
    :cond_d
    new-instance p0, Lcom/bytedance/ies/cutsame/util/Size;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lcom/bytedance/ies/cutsame/util/Size;-><init>(II)V

    return-object p0
.end method

.method public getCurrDecodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    .line 1598
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1599
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getCurrDecodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrDisplayImage()Landroid/graphics/Bitmap;
    .registers 2

    .line 2081
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2082
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getCurrDisplayImage()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrDisplayImage(I)Landroid/graphics/Bitmap;
    .registers 3

    .line 2096
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2097
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getCurrDisplayImage(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentPosition()J
    .registers 3

    .line 712
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureNativeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 713
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeGetCurrentPosition(J)J

    move-result-wide v0

    return-wide v0

    :cond_d
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getDuration()J
    .registers 3

    .line 719
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureNativeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 720
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeGetDuration(J)J

    move-result-wide v0

    return-wide v0

    :cond_d
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getFileClipInfo(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1847
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1848
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFileClipInfo(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImages([IIILcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$VEGetImageListener;)I
    .registers 9

    .line 1892
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1893
    sget-object v0, Lcom/ss/android/vesdk/VEEditor$GET_FRAMES_FLAGS;->GET_FRAMES_MODE_NORMAL:Lcom/ss/android/vesdk/VEEditor$GET_FRAMES_FLAGS;

    .line 1894
    invoke-virtual {p4}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;->getValue()I

    move-result v1

    sget-object v2, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;->GET_FRAMES_MODE_NOEFFECT:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;

    invoke-virtual {v2}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;->getValue()I

    move-result v2

    if-eq v1, v2, :cond_52

    .line 1895
    invoke-virtual {p4}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;->getValue()I

    move-result v1

    sget-object v2, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;->GET_FRAMES_MODE_NOEFFECT_SCORE:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;

    invoke-virtual {v2}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_25

    .line 1896
    sget-object v0, Lcom/ss/android/vesdk/VEEditor$GET_FRAMES_FLAGS;->GET_FRAMES_MODE_NOEFFECT_SCORE:Lcom/ss/android/vesdk/VEEditor$GET_FRAMES_FLAGS;

    :cond_22
    :goto_22
    move-object p4, v0

    move-object v0, p0

    goto :goto_55

    .line 1897
    :cond_25
    invoke-virtual {p4}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;->getValue()I

    move-result v1

    sget-object v2, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;->GET_FRAMES_MODE_NORMAL_SCORE:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;

    invoke-virtual {v2}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_34

    .line 1898
    sget-object v0, Lcom/ss/android/vesdk/VEEditor$GET_FRAMES_FLAGS;->GET_FRAMES_MODE_NORMAL_SCORE:Lcom/ss/android/vesdk/VEEditor$GET_FRAMES_FLAGS;

    goto :goto_22

    .line 1899
    :cond_34
    invoke-virtual {p4}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;->getValue()I

    move-result v1

    sget-object v2, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;->GET_FRAMES_MODE_ORIGINAL:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;

    invoke-virtual {v2}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_43

    .line 1900
    sget-object v0, Lcom/ss/android/vesdk/VEEditor$GET_FRAMES_FLAGS;->GET_FRAMES_MODE_ORIGINAL:Lcom/ss/android/vesdk/VEEditor$GET_FRAMES_FLAGS;

    goto :goto_22

    .line 1901
    :cond_43
    invoke-virtual {p4}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;->getValue()I

    move-result p4

    sget-object v1, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;->GET_FRAMES_MODE_ORIGINAL_SCORE:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;->getValue()I

    move-result v1

    if-ne p4, v1, :cond_22

    .line 1902
    sget-object v0, Lcom/ss/android/vesdk/VEEditor$GET_FRAMES_FLAGS;->GET_FRAMES_MODE_ORIGINAL_SCORE:Lcom/ss/android/vesdk/VEEditor$GET_FRAMES_FLAGS;

    goto :goto_22

    .line 1905
    :cond_52
    sget-object v0, Lcom/ss/android/vesdk/VEEditor$GET_FRAMES_FLAGS;->GET_FRAMES_MODE_NOEFFECT:Lcom/ss/android/vesdk/VEEditor$GET_FRAMES_FLAGS;

    goto :goto_22

    .line 1907
    :goto_55
    iget-object p0, v0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    move-object v1, p5

    new-instance p5, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$5;

    invoke-direct {p5, v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$5;-><init>(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$VEGetImageListener;)V

    invoke-virtual/range {p0 .. p5}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getImages([IIILcom/ss/android/vesdk/VEEditor$GET_FRAMES_FLAGS;Lcom/ss/android/vesdk/VEListener$VEGetImageListener;)I

    move-result p0

    return p0

    :cond_62
    const/16 p0, -0x16

    return p0
.end method

.method public getInfoStickerBoundingBox(Ljava/lang/String;Landroid/graphics/RectF;)Z
    .registers 4

    .line 1417
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1418
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getInfoStickerBoundingBox(Ljava/lang/String;Landroid/graphics/RectF;)Z

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public getInfoStickerPosition(Ljava/lang/String;[F)Z
    .registers 4

    .line 1425
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1426
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getInfoStickerPosition(Ljava/lang/String;[F)Z

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public getInfoStickerTemplateParams(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1465
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1466
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getInfoStickerTemplateParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInitSize()Lcom/bytedance/ies/cutsame/util/Size;
    .registers 2

    .line 1563
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1564
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getInitSize()Lcom/bytedance/ies/cutsame/util/Size;

    move-result-object p0

    return-object p0

    .line 1566
    :cond_d
    new-instance p0, Lcom/bytedance/ies/cutsame/util/Size;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lcom/bytedance/ies/cutsame/util/Size;-><init>(II)V

    return-object p0
.end method

.method public getReDrawBmp()Landroid/graphics/Bitmap;
    .registers 2

    .line 2056
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2057
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getReDrawBmp()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSegmentKeyframeState(Ljava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;I)Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;
    .registers 4

    .line 803
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getSegmentKeyframe(Ljava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;I)Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;

    move-result-object p0

    return-object p0
.end method

.method public getSingleTrackProcessedImageForChroma(IILjava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    .line 1955
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1956
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getSingleTrackProcessedImageForChroma(IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method getSource()Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;
    .registers 1

    .line 287
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->source:Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;

    return-object p0
.end method

.method public getSpecificImage(IIILkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    .line 1543
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1544
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getSpecificImage(IIILkotlin/jvm/functions/Function1;)V

    :cond_b
    return-void
.end method

.method public getState()Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;
    .registers 3

    .line 556
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureNativeValid()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 557
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeGetState(J)I

    move-result p0

    .line 558
    invoke-static {}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;->values()[Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;

    move-result-object v0

    if-ltz p0, :cond_18

    .line 559
    array-length v1, v0

    if-ge p0, v1, :cond_18

    .line 560
    aget-object p0, v0, p0

    return-object p0

    .line 562
    :cond_18
    sget-object p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;->UNKNOWN:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;

    return-object p0

    .line 565
    :cond_1b
    sget-object p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;->UNKNOWN:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;

    return-object p0
.end method

.method public getTailSegment()Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;
    .registers 5

    .line 412
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureNativeValid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 413
    iget-wide v2, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-static {v2, v3}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeGetTailSegment(J)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_10

    return-object v1

    .line 416
    :cond_10
    new-instance v0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;-><init>()V

    .line 417
    invoke-virtual {v0, p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->fromJson(Ljava/lang/String;)V

    return-object v0

    :cond_19
    return-object v1
.end method

.method public getTemplateModel()Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;
    .registers 3

    .line 729
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureNativeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 730
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeGetTemplateModel(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTextOffsetTimeOnSegment(Ljava/lang/String;)Ljava/lang/Long;
    .registers 5

    .line 863
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->getTextSegmentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 864
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 865
    :cond_c
    iget-wide v1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-static {v1, v2, v0, p1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeGetTextOffsetTimeOnSegment(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getTextPosition(Ljava/lang/String;)Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;
    .registers 10

    .line 811
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureNativeValid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 812
    iget-wide v2, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-static {v2, v3, p1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeGetTextPosition(JLjava/lang/String;)[F

    move-result-object p0

    if-eqz p0, :cond_29

    .line 813
    array-length p1, p0

    const/4 v0, 0x5

    if-ge p1, v0, :cond_14

    goto :goto_29

    .line 816
    :cond_14
    new-instance v2, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;

    const/4 p1, 0x0

    aget v3, p0, p1

    const/4 p1, 0x1

    aget v4, p0, p1

    const/4 p1, 0x2

    aget v5, p0, p1

    const/4 p1, 0x3

    aget v6, p0, p1

    const/4 p1, 0x4

    aget v7, p0, p1

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;-><init>(FFFFF)V

    return-object v2

    :cond_29
    :goto_29
    return-object v1
.end method

.method public getTextPosition(Ljava/lang/String;Landroid/graphics/RectF;)V
    .registers 7

    .line 740
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureNativeValid()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 741
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->getTextPosition(Ljava/lang/String;)Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;

    move-result-object p0

    .line 743
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->getX()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p1, v1

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->getWidth()F

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    sub-float/2addr p1, v2

    iput p1, p2, Landroid/graphics/RectF;->left:F

    .line 744
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->getWidth()F

    move-result v2

    div-float/2addr v2, v0

    add-float/2addr p1, v2

    iput p1, p2, Landroid/graphics/RectF;->right:F

    .line 745
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->getY()F

    move-result p1

    div-float/2addr p1, v0

    sub-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->getHeight()F

    move-result p1

    div-float/2addr p1, v3

    add-float/2addr v1, p1

    iput v1, p2, Landroid/graphics/RectF;->bottom:F

    .line 746
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->getHeight()F

    move-result p0

    div-float/2addr p0, v0

    sub-float/2addr v1, p0

    iput v1, p2, Landroid/graphics/RectF;->top:F

    :cond_3c
    return-void
.end method

.method public getTextSegment(Ljava/lang/String;Landroid/graphics/RectF;)Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;
    .registers 8

    .line 841
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->getTextSegmentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 842
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return-object v2

    .line 843
    :cond_c
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->getTextSegment()Ljava/util/List;

    move-result-object v1

    .line 845
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;

    .line 846
    invoke-virtual {v3}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;->getMaterialId()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    move-object v2, v3

    :cond_2b
    if-eqz v2, :cond_4b

    .line 852
    sget-object v1, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->TEXT:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    invoke-virtual {v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;->getTargetStartTime()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->getSegmentKeyframeState(Ljava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;I)Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;

    move-result-object v0

    .line 853
    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;->getParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 854
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->getTextPosition(Ljava/lang/String;Landroid/graphics/RectF;)V

    return-object v2

    .line 856
    :cond_46
    sget-object p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayerHelper;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayerHelper;

    invoke-virtual {p0, v2, p2, v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayerHelper;->tryUpdateKeyTextSegment(Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;Landroid/graphics/RectF;Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;)V

    :cond_4b
    return-object v2
.end method

.method public getTextSegment()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;",
            ">;"
        }
    .end annotation

    .line 825
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureNativeValid()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 826
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeGetTextSegments(J)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 827
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_24

    .line 829
    :cond_15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 830
    invoke-static {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;->listFromJson(Ljava/lang/String;)[Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 832
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_23
    return-object v0

    .line 827
    :cond_24
    :goto_24
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTextSegmentId(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1985
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureNativeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1986
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeGetTextSegmentId(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1988
    :cond_d
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;

    const-string p1, "getTextSegmentId, nativePlayer is inValid!"

    invoke-static {p0, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoSegment(Ljava/lang/String;)Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;
    .registers 7

    .line 394
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->getVideoSegmentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return-object v2

    .line 396
    :cond_c
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->getVideoSegment()Ljava/util/List;

    move-result-object v1

    .line 398
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;

    .line 399
    invoke-virtual {v3}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getMaterialId()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    move-object v2, v3

    :cond_2b
    if-eqz v2, :cond_3d

    .line 405
    sget-object p1, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->VIDEO:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    invoke-virtual {v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getSourceStartTime()J

    move-result-wide v3

    long-to-int v1, v3

    invoke-virtual {p0, v0, p1, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->getSegmentKeyframeState(Ljava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;I)Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;

    move-result-object p0

    .line 406
    sget-object p1, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayerHelper;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayerHelper;

    invoke-virtual {p1, v2, p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayerHelper;->tryUpdateKeyframeState(Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;)V

    :cond_3d
    return-object v2
.end method

.method public getVideoSegment()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;",
            ">;"
        }
    .end annotation

    .line 372
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureNativeValid()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 373
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeGetVideoSegments(J)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 374
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_24

    .line 376
    :cond_15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 377
    invoke-static {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->listFromJson(Ljava/lang/String;)[Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 379
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_23
    return-object v0

    .line 374
    :cond_24
    :goto_24
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoSegmentId(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1976
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureNativeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1977
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeGetVideoSegmentId(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1979
    :cond_d
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;

    const-string p1, "getVideoSegmentId, nativePlayer is inValid!"

    invoke-static {p0, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 3

    .line 319
    new-instance v0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->init(Landroid/content/Context;Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;)V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;)V
    .registers 6

    .line 323
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureNativeValid()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 324
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->toJson()Ljava/lang/String;

    move-result-object p2

    .line 326
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeInit(JLandroid/content/Context;Ljava/lang/String;)I

    .line 329
    iget-wide p1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->statusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

    invoke-static {p1, p2, p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeSetPlayerStatusListener(JLcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;)V

    return-void

    .line 331
    :cond_2d
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->newErrorListener:Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerErrorListener;

    if-eqz p1, :cond_37

    const/16 p2, -0x16

    const/4 v0, 0x0

    .line 333
    invoke-interface {p1, p0, p2, v0}, Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerErrorListener;->onError(Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer;II)V

    :cond_37
    return-void
.end method

.method public layoutInfoSticker(Ljava/lang/String;FFFFI)I
    .registers 8

    .line 1511
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1512
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual/range {p0 .. p6}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->layoutInfoSticker(Ljava/lang/String;FFFFI)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public lockIndex(Ljava/lang/String;)I
    .registers 3

    .line 1678
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1679
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->lockIndex(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public moveSubVideo(Ljava/lang/String;I)I
    .registers 4

    .line 1797
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1798
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->moveSubVideo(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public onSurfaceChanged(II)V
    .registers 4

    .line 1835
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1836
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->onSurfaceChanged(II)V

    :cond_b
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/Surface;)V
    .registers 3

    .line 1829
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1830
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->onSurfaceCreated(Landroid/view/Surface;)V

    :cond_b
    return-void
.end method

.method public onSurfaceDestroyed()V
    .registers 2

    .line 1841
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1842
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->onSurfaceDestroyed()V

    :cond_b
    return-void
.end method

.method public pause()V
    .registers 4

    .line 685
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureNativeValid()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 688
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePause(J)V

    return-void

    .line 690
    :cond_13
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->newErrorListener:Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerErrorListener;

    if-eqz v0, :cond_1d

    const/16 v1, -0x16

    const/4 v2, 0x0

    .line 692
    invoke-interface {v0, p0, v1, v2}, Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerErrorListener;->onError(Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer;II)V

    :cond_1d
    return-void
.end method

.method public pictureAdjust(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FI)I
    .registers 8

    .line 1296
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1297
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    move v1, p4

    move-object p4, p3

    move p3, v1

    invoke-virtual/range {p0 .. p5}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setPictureAdjust(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;I)I

    move-result p0

    return p0

    :cond_10
    const/16 p0, -0x16

    return p0
.end method

.method public pictureAdjust(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[F[I)I
    .registers 8

    .line 1288
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1289
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    move-object v1, p4

    move-object p4, p3

    move-object p3, v1

    invoke-virtual/range {p0 .. p5}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setPictureAdjustBatch(Ljava/lang/String;[Ljava/lang/String;[F[Ljava/lang/String;[I)I

    move-result p0

    return p0

    :cond_10
    const/16 p0, -0x16

    return p0
.end method

.method public prepareAsync()V
    .registers 5

    .line 573
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;

    const-string v1, "prepareAsync"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureNativeValid()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 578
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeClone(J)J

    move-result-wide v0

    .line 580
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$2;-><init>(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;J)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 633
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_20
    return-void
.end method

.method public prepareVE()I
    .registers 2

    .line 1875
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1876
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->prepare()I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public refreshCurrentFrame()I
    .registers 2

    .line 1060
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1061
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->refreshCurrentFrame()I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public refreshWithCallback(Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;)I
    .registers 3

    .line 1855
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1856
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->refreshWithCallback(Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public refreshWithCallbackF(Lkotlin/jvm/functions/Function1;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")I"
        }
    .end annotation

    .line 1863
    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$4;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$4;-><init>(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->refreshWithCallback(Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;)I

    move-result p0

    return p0
.end method

.method public release()V
    .registers 1

    .line 362
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->destroyPlayer()V

    .line 363
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->releaseObject()V

    return-void
.end method

.method public releaseObject()V
    .registers 6

    .line 913
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;

    const-string v1, "releaseObject"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_14

    .line 915
    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeReleasePtr(J)V

    .line 916
    iput-wide v2, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    :cond_14
    const/4 v0, 0x0

    .line 918
    iput-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->prepareListener:Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;

    return-void
.end method

.method public removeAudioKeyframe(Ljava/lang/String;I)I
    .registers 5

    const/4 v0, 0x1

    .line 785
    const-string v1, "audio volume filter"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->removeKeyframe(Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public removeChromaFilter(Ljava/lang/String;)V
    .registers 3

    .line 1173
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1174
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->removeChromaFilter(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public removeKeyframe(Ljava/lang/String;IILjava/lang/String;)I
    .registers 6

    .line 789
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 p0, -0x16

    return p0

    .line 792
    :cond_9
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->removeKeyframe(Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public removeKeyframe(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I
    .registers 12

    .line 796
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 p0, -0x16

    return p0

    .line 799
    :cond_9
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->removeKeyframe(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public removeKeyframeListener(Lcom/bytedance/ies/cutsame/veadapter/KeyframeListener;)Ljava/lang/Boolean;
    .registers 3

    .line 1946
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1947
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->removeKeyframeListener(Lcom/bytedance/ies/cutsame/veadapter/KeyframeListener;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 1949
    :cond_d
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;

    const-string p1, "VEEditorAdapter is invalid"

    invoke-static {p0, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public removeStickerKeyframe(Ljava/lang/String;I)I
    .registers 5

    const/4 v0, 0x2

    .line 777
    const-string v1, "info_sticker"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->removeKeyframe(Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public removeSubVideo(Ljava/lang/String;)I
    .registers 3

    .line 1781
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1782
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->removeSubVideo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public removeTextKeyframe(Ljava/lang/String;I)I
    .registers 5

    const/4 v0, 0x2

    .line 781
    const-string v1, "text_sticker"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->removeKeyframe(Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public removeVideo(Ljava/lang/String;)I
    .registers 3

    .line 1353
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1354
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->removeVideo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public removeVideoKeyframe(Ljava/lang/String;I)I
    .registers 4

    .line 770
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 p0, -0x16

    return p0

    .line 773
    :cond_9
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->removeVideoKeyframe(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public removeWatermark()V
    .registers 3

    .line 660
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureNativeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 661
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeRemoveWatermark(J)V

    :cond_b
    return-void
.end method

.method public replaceVideoIndex(Ljava/lang/String;Ljava/lang/String;IIF)I
    .registers 7

    .line 1313
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1314
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual/range {p0 .. p5}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->replaceVideoIndex(Ljava/lang/String;Ljava/lang/String;IIF)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public seekDone(IZ)I
    .registers 4

    const/4 v0, 0x0

    .line 1638
    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->seekDonePlay(IZLcom/ss/android/vesdk/VEListener$VEEditorSeekListener;)I

    move-result p0

    return p0
.end method

.method public seekDone(IZLcom/ss/android/vesdk/VEListener$VEEditorSeekListener;)I
    .registers 5

    .line 1662
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1663
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->seekDone(IZLcom/ss/android/vesdk/VEListener$VEEditorSeekListener;)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public seekDonePlay(IZLcom/ss/android/vesdk/VEListener$VEEditorSeekListener;)I
    .registers 5

    .line 1642
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1643
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->seekDonePlay(IZLcom/ss/android/vesdk/VEListener$VEEditorSeekListener;)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public seekDonePlayF(IZLkotlin/jvm/functions/Function1;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lkotlin/jvm/functions/Function1;",
            ")I"
        }
    .end annotation

    .line 1650
    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$3;

    invoke-direct {v0, p0, p3}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$3;-><init>(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->seekDonePlay(IZLcom/ss/android/vesdk/VEListener$VEEditorSeekListener;)I

    move-result p0

    return p0
.end method

.method public seekToDone(IZ)V
    .registers 3

    .line 357
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->seekDone(IZ)I

    return-void
.end method

.method public seekWithFlag(ILcom/ss/android/vesdk/VEEditor$SEEK_MODE;Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;)I
    .registers 5

    .line 1626
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1627
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->seekWithFlag(ILcom/ss/android/vesdk/VEEditor$SEEK_MODE;Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public seekWithResult(ILkotlin/jvm/functions/Function5;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function5;",
            ")V"
        }
    .end annotation

    .line 1549
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1550
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->seekWithResult(ILkotlin/jvm/functions/Function5;)V

    :cond_b
    return-void
.end method

.method public seeking(I)I
    .registers 3

    .line 1610
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1611
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->onGoingSeek(I)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public seeking(IFF)I
    .registers 5

    .line 1618
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1619
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->onGoingSeek(IFF)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public setAudioPath(Ljava/lang/String;Ljava/lang/String;J)I
    .registers 12

    .line 446
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioPath, materialId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", videoPath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureNativeValid()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 449
    iget-wide v1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-static/range {v1 .. v6}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeSetAudioPath(JLjava/lang/String;Ljava/lang/String;J)I

    move-result p0

    return p0

    :cond_2e
    const/16 p0, -0x16

    return p0
.end method

.method public setAudioTimeClip(Ljava/lang/String;IIII)I
    .registers 17

    .line 466
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureNativeValid()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 467
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    int-to-long v3, p2

    int-to-long v5, p3

    int-to-long v7, p4

    move/from16 v2, p5

    int-to-long v9, v2

    move-object v2, p1

    invoke-static/range {v0 .. v10}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeSetAudioTimeClip(JLjava/lang/String;JJJJ)I

    move-result v0

    return v0

    :cond_14
    const/16 v0, -0x16

    return v0
.end method

.method public setBackgroundColor(I)I
    .registers 3

    .line 1718
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1719
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setBackgroundColor(I)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public setBeauty(Ljava/lang/String;Ljava/lang/String;FI)I
    .registers 6

    .line 1256
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1257
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setBeauty(Ljava/lang/String;Ljava/lang/String;FI)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public setCanvasBackground(Ljava/lang/String;Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;)I
    .registers 4

    .line 1248
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1249
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setCanvasBackground(Ljava/lang/String;Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public setClipReservePitch(Ljava/lang/String;IZ)I
    .registers 5

    .line 1805
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1806
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setClipReservePitch(Ljava/lang/String;IZ)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public setDataSource(Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;)I
    .registers 5

    .line 514
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSource, source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureNativeValid()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 517
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->source:Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;

    .line 518
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->getNativeSource()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeSetDataSource(JJ)I

    move-result p0

    return p0

    :cond_29
    const/16 p0, -0x16

    return p0
.end method

.method public setDataSource(Lcom/bytedance/ies/cutsame/veadapter/VideoData;)I
    .registers 5

    .line 1051
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1053
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setDataSource(Lcom/bytedance/ies/cutsame/veadapter/VideoData;)I

    move-result p0

    return p0

    :cond_23
    const/16 p0, -0x16

    return p0
.end method

.method public setDataSource(Lcom/ss/android/ugc/cut_ui/core/ITemplateSource;)V
    .registers 3

    .line 340
    instance-of v0, p1, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;

    if-eqz v0, :cond_9

    .line 341
    check-cast p1, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->setDataSource(Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;)I

    :cond_9
    return-void
.end method

.method public setDisplayState(FFFII)I
    .registers 7

    .line 1369
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1370
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual/range {p0 .. p5}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setDisplayState(FFFII)V

    const/4 p0, 0x0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public setDisplayState(FFFIII)I
    .registers 8

    .line 1378
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1379
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual/range {p0 .. p6}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setDisplayState(FFFIII)V

    const/4 p0, 0x0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public setEditorUsageType(Ljava/lang/String;)I
    .registers 3

    .line 1821
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1822
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setEditorUsageType(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public setEpilogueResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 529
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEpilogueResource, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureNativeValid()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 531
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeSetEpilogueSource(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    return-void
.end method

.method public setFilter(Ljava/lang/String;Ljava/lang/String;FI)I
    .registers 6

    .line 1134
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1135
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setFilter(Ljava/lang/String;Ljava/lang/String;FI)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public setFirstFrameListener(Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerFirstFrameListener;)I
    .registers 3

    .line 1883
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1884
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setFirstFrameListener(Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerFirstFrameListener;)V

    const/4 p0, 0x0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public setInfoStickerCallSync(Z)I
    .registers 3

    .line 1813
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1814
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setInfoStickerCallSync(Z)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public setInfoStickerTime(Ljava/lang/String;II)I
    .registers 5

    .line 1457
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1458
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setInfoStickerTime(Ljava/lang/String;II)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public setKeyframe(Ljava/lang/String;JLjava/lang/String;)I
    .registers 6

    .line 755
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 p0, -0x16

    return p0

    .line 758
    :cond_9
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setKeyframe(Ljava/lang/String;JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setKeyframe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)I
    .registers 14

    .line 762
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 p0, -0x16

    return p0

    .line 766
    :cond_9
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setKeyframe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setMiniCanvasDuration(IZ)I
    .registers 4

    .line 1571
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1572
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setMiniCanvasDuration(IZ)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public setOnErrorListener(Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerErrorListener;)V
    .registers 2

    .line 347
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->newErrorListener:Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lcom/bytedance/ies/cutsame/cut_android/TemplateInfoListener;)V
    .registers 4

    .line 648
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureNativeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 649
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeSetOnInfoListener(JLcom/bytedance/ies/cutsame/cut_android/TemplateInfoListener;)V

    :cond_b
    return-void
.end method

.method public setOnStateChangedListener(Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;)V
    .registers 2

    .line 352
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->newStateListener:Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;

    return-void
.end method

.method public setPlayerStatusListener(Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;)V
    .registers 2

    .line 644
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->outStatusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

    return-void
.end method

.method public setPrepareListener(Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;)V
    .registers 4

    .line 509
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;

    const-string v1, "setPrepareListener"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->prepareListener:Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;

    return-void
.end method

.method public setPreviewSurfaceBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 2014
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2015
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setPreviewSurfaceBitmap(Landroid/graphics/Bitmap;)V

    :cond_b
    return-void
.end method

.method public setReDrawBmp(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 2067
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2068
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setReDrawBmp(Landroid/graphics/Bitmap;)V

    :cond_b
    return-void
.end method

.method public setReporter(Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter;)V
    .registers 2

    .line 296
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->iCutReporter:Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter;

    return-void
.end method

.method public setReshape(Ljava/lang/String;Ljava/lang/String;FFI)I
    .registers 7

    .line 1151
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1152
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual/range {p0 .. p5}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setReshape(Ljava/lang/String;Ljava/lang/String;FFI)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public setSeekCommandFlushedListener(Lcom/bytedance/ies/cutsame/veadapter/ISeekCommandFlushedListener;)Ljava/lang/Boolean;
    .registers 3

    .line 1936
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1937
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setSeekCommandFlushedListener(Lcom/bytedance/ies/cutsame/veadapter/ISeekCommandFlushedListener;)V

    .line 1938
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 1940
    :cond_e
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;

    const-string p1, "VEEditorAdapter is invalid"

    invoke-static {p0, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setSinglePlayerSource(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 548
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSinglePlayerSource, materialId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureNativeValid()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 551
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeSetSinglePlaySource(JLjava/lang/String;Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public setStickerAnimation(Ljava/lang/String;ZLjava/lang/String;JLjava/lang/String;J)I
    .registers 12

    .line 1481
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1482
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    move-wide v1, p4

    move p4, p2

    move-object p2, p3

    move-object p3, p6

    move-wide p5, v1

    invoke-virtual/range {p0 .. p8}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setStickerAnimation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJ)I

    move-result p0

    return p0

    :cond_12
    const/16 p0, -0x16

    return p0
.end method

.method public setSubVideoLayer(Ljava/lang/String;I)I
    .registers 4

    .line 1789
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1790
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setSubVideoLayer(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public setSurface(Landroid/view/SurfaceView;)V
    .registers 5

    .line 304
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSurface : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureNativeValid()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 306
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeSetSurface(JLandroid/view/SurfaceView;)V

    return-void

    .line 308
    :cond_22
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->newErrorListener:Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerErrorListener;

    if-eqz p1, :cond_2c

    const/16 v0, -0x16

    const/4 v1, 0x0

    .line 310
    invoke-interface {p1, p0, v0, v1}, Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerErrorListener;->onError(Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer;II)V

    :cond_2c
    return-void
.end method

.method public setSurfaceReDraw(Z)V
    .registers 3

    .line 2045
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2046
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setSurfaceReDraw(Z)V

    :cond_b
    return-void
.end method

.method public setTextAnimSwitch(Ljava/lang/String;Z)I
    .registers 5

    .line 880
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureNativeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 881
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeTextAnimSwitch(JLjava/lang/String;Z)V

    const/4 p0, 0x0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public setTextTemplateParams(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 5

    .line 1449
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1450
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setTextTemplateParams(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public setTrackFilterEnable(IZZ)I
    .registers 5

    .line 1963
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1964
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setTrackFilterEnable(IZZ)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x17

    return p0
.end method

.method public setTransition(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 12

    .line 1086
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1087
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    int-to-long v4, p3

    move-object v2, p1

    move-object v3, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setTransition(Ljava/lang/String;Ljava/lang/String;JI)I

    move-result p0

    return p0

    :cond_11
    const/16 p0, -0x16

    return p0
.end method

.method public setVideoAnim(Ljava/lang/String;Ljava/lang/String;JJ)I
    .registers 8

    .line 1710
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1711
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual/range {p0 .. p6}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setVideoAnim(Ljava/lang/String;Ljava/lang/String;JJ)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public setVideoClip(Ljava/lang/String;J)I
    .registers 7

    .line 479
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoClip, materialId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", startTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureNativeValid()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 482
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeSetVideoTimeClip(JLjava/lang/String;J)I

    move-result p0

    return p0

    :cond_2b
    const/16 p0, -0x16

    return p0
.end method

.method public setVideoCrop(Ljava/lang/String;Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;)I
    .registers 6

    .line 494
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoCrop, materialId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", crop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureNativeValid()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 497
    invoke-virtual {p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->toJson()Ljava/lang/String;

    move-result-object p2

    .line 498
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeSetVideoSpaceClip(JLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2f
    const/16 p0, -0x16

    return p0
.end method

.method public setVideoPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .line 430
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoPath, materialId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", videoPath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureNativeValid()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 433
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeSetVideoPath(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2b
    const/16 p0, -0x16

    return p0
.end method

.method public setVideoPreviewConfig(Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoPreviewConfig;)V
    .registers 5

    .line 536
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoPreviewConfig, config = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureNativeValid()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 538
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoPreviewConfig;->toJson()Ljava/lang/String;

    move-result-object p1

    .line 539
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeSetVideoPreviewConfig(JLjava/lang/String;)V

    :cond_29
    return-void
.end method

.method public setVideoStable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7

    .line 2024
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2025
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual/range {p0 .. p5}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setStable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    :cond_b
    return-void
.end method

.method public start()V
    .registers 4

    .line 671
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureNativeValid()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 674
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeStart(J)V

    return-void

    .line 676
    :cond_13
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->newErrorListener:Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerErrorListener;

    if-eqz v0, :cond_1d

    const/16 v1, -0x16

    const/4 v2, 0x0

    .line 678
    invoke-interface {v0, p0, v1, v2}, Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerErrorListener;->onError(Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer;II)V

    :cond_1d
    return-void
.end method

.method public startStickerAnimationPreview(II)I
    .registers 4

    .line 1702
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1703
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->startStickerAnimationPreview(II)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public stop()V
    .registers 4

    .line 699
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureNativeValid()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 702
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeStop(J)V

    return-void

    .line 704
    :cond_13
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->newErrorListener:Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerErrorListener;

    if-eqz v0, :cond_1d

    const/16 v1, -0x16

    const/4 v2, 0x0

    .line 706
    invoke-interface {v0, p0, v1, v2}, Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerErrorListener;->onError(Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer;II)V

    :cond_1d
    return-void
.end method

.method public stopStickerAnimationPreview()I
    .registers 2

    .line 1280
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1281
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->stopStickerAnimationPreview()I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public unlockIndex()I
    .registers 2

    .line 1686
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1687
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->unlockIndex()I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public updateAmazingFilterTime(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;II)I
    .registers 7

    .line 1213
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1214
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual/range {p0 .. p5}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->updateAmazingAdjustTime(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;II)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public updateAudioPath(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 1232
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1233
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->updateAudioPath(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public updateAudioTrack(Ljava/lang/String;IIIIZ)I
    .registers 18

    .line 1221
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1222
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    int-to-long v2, p2

    int-to-long v4, p3

    int-to-long v6, p4

    move/from16 v1, p5

    int-to-long v8, v1

    move-object v1, p1

    move/from16 v10, p6

    invoke-virtual/range {v0 .. v10}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->updateAudioTrack(Ljava/lang/String;JJJJZ)I

    move-result v0

    return v0

    :cond_16
    const/16 v0, -0x16

    return v0
.end method

.method public updateEffectTime(Ljava/lang/String;II)I
    .registers 5

    .line 1579
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1580
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->updateEffectTime(Ljava/lang/String;II)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public updateTextSticker(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 5

    .line 1433
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1434
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->updateTextSticker(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public updateVideoKeyframe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 751
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePlayer:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeUpdateVideoKeyframe(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public updateVideoMask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6

    .line 1757
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1758
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->updateVideoMask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public updateVideoOrder([Ljava/lang/String;[I)I
    .registers 4

    .line 1361
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1362
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->updateVideoOrder([Ljava/lang/String;[I)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public updateVideoPath(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 1765
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1766
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->updateVideoPath(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public updateVideoSize(Ljava/lang/String;IIFFFZ)I
    .registers 9

    .line 1337
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1338
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual/range {p0 .. p7}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->updateVideoSize(Ljava/lang/String;IIFFFZ)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public updateVideoTimeClip(Ljava/lang/String;IID)I
    .registers 7

    .line 1773
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1774
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual/range {p0 .. p5}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->updateVideoTimeClip(Ljava/lang/String;IID)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

.method public updateVideoTransform(Ljava/lang/String;FFFFFZLjava/lang/String;)I
    .registers 10

    .line 1741
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->makeSureVEEditorAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1742
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->veEditorAdapter:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual/range {p0 .. p8}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->updateVideoTransform(Ljava/lang/String;FFFFFZLjava/lang/String;)I

    move-result p0

    return p0

    :cond_d
    const/16 p0, -0x16

    return p0
.end method

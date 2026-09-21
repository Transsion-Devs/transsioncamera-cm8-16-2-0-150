.class public Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AUDIO_CLIP_INDEX:I = 0x0

.field private static final AUDIO_KEY:Ljava/lang/String; = "audio_filter_key"

.field private static final MATERIAL_VIDEO_PATH_BLACK:Ljava/lang/String; = "VIDEO_BLACK"

.field private static final MATERIAL_VIDEO_PATH_TRANSPARENT:Ljava/lang/String; = "VIDEO_TRANSPARENT"

.field private static final STICKER_KEY:Ljava/lang/String; = "sticker_filter_key"

.field private static final TAG:Ljava/lang/String; = "cut.VEEditorAdapter"

.field public static final TYPE_AUDIO:I = 0x1

.field public static final TYPE_STICKER:I = 0x2

.field public static final TYPE_VIDEO:I = 0x0

.field private static final VIDEO_KEY:Ljava/lang/String; = "video_filter_key"

.field private static final VIDEO_TRACK_INDEX:I

.field private static needAuth:Z


# instance fields
.field private asyncHandlerThread:Landroid/os/HandlerThread;

.field private configCanvasSize:Lcom/bytedance/ies/cutsame/util/Size;

.field private final context:Landroid/content/Context;

.field private currentVECanvasSize:Lcom/bytedance/ies/cutsame/util/Size;

.field private editorProxy:Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;

.field private gson:Lcom/google/gson/Gson;

.field private indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

.field private isVEInited:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private keyframeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/veadapter/KeyframeListener;",
            ">;"
        }
    .end annotation
.end field

.field private keyframeProxy:Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;

.field private mFilterIndexMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterIndexSegmentMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mTemplatePlayerStatusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

.field private mVEEditor:Lcom/ss/android/vesdk/VEEditor;

.field private seekCommandFlushedListener:Lcom/bytedance/ies/cutsame/veadapter/ISeekCommandFlushedListener;

.field private final statusListenerLock:Ljava/lang/Object;

.field private surfaceView:Landroid/view/SurfaceView;

.field private templatePlayerFirstFrameListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerFirstFrameListener;

.field private veConfig:Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;

.field private volatile videoData:Lcom/bytedance/ies/cutsame/veadapter/VideoData;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 157
    invoke-direct {p0, p1, v0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;-><init>(Landroid/content/Context;Landroid/view/SurfaceView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceView;)V
    .registers 4

    const/4 v0, 0x0

    .line 161
    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;-><init>(Landroid/content/Context;Landroid/view/SurfaceView;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceView;Ljava/lang/String;)V
    .registers 7

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVEInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->statusListenerLock:Ljava/lang/Object;

    .line 128
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->keyframeListeners:Ljava/util/List;

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->seekCommandFlushedListener:Lcom/bytedance/ies/cutsame/veadapter/ISeekCommandFlushedListener;

    .line 132
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "ve-async"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->asyncHandlerThread:Landroid/os/HandlerThread;

    .line 134
    new-instance v0, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    .line 135
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mFilterIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 139
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mFilterIndexSegmentMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 141
    new-instance v0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->veConfig:Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;

    .line 142
    new-instance v0, Lcom/bytedance/ies/cutsame/util/Size;

    invoke-direct {v0, v1, v1}, Lcom/bytedance/ies/cutsame/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->configCanvasSize:Lcom/bytedance/ies/cutsame/util/Size;

    .line 143
    new-instance v0, Lcom/bytedance/ies/cutsame/util/Size;

    invoke-direct {v0, v1, v1}, Lcom/bytedance/ies/cutsame/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->currentVECanvasSize:Lcom/bytedance/ies/cutsame/util/Size;

    .line 154
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    new-instance v1, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;

    invoke-direct {v1}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;-><init>()V

    const-class v2, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->gson:Lcom/google/gson/Gson;

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VEEditorAdapter constructor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->context:Landroid/content/Context;

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;

    invoke-virtual {v2, p1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->getBaseDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;->VEEDITOR:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_aa

    .line 172
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_aa

    .line 173
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->veConfig:Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;

    invoke-virtual {v0, p3}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->fromJson(Ljava/lang/String;)V

    .line 176
    :cond_aa
    sget-boolean p3, Lcom/bytedance/ies/cutsame/cut_android/BuildConfig;->DEBUG:Z

    if-eqz p3, :cond_c6

    .line 177
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object p3

    new-instance v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$1;

    invoke-direct {v0, p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$1;-><init>(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)V

    invoke-virtual {p3, v0}, Lcom/ss/android/vesdk/runtime/VERuntime;->registerMonitor(Lcom/ss/android/vesdk/VEListener$VEMonitorListener;)V

    .line 183
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object p3

    new-instance v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$2;

    invoke-direct {v0, p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$2;-><init>(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)V

    invoke-virtual {p3, v0}, Lcom/ss/android/vesdk/runtime/VERuntime;->registerApplog(Lcom/ss/android/vesdk/VEListener$VEApplogListener;)V

    .line 191
    :cond_c6
    new-instance p3, Lcom/bytedance/ies/cutsame/veadapter/VEEditorConfigManager;

    invoke-direct {p3}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorConfigManager;-><init>()V

    invoke-virtual {p3}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorConfigManager;->createConfig()Lcom/ss/android/vesdk/VEUserConfig;

    move-result-object p3

    if-nez p2, :cond_d9

    .line 193
    new-instance p2, Lcom/ss/android/vesdk/VEEditor;

    invoke-direct {p2, p1, p3}, Lcom/ss/android/vesdk/VEEditor;-><init>(Ljava/lang/String;Lcom/ss/android/vesdk/VEUserConfig;)V

    iput-object p2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    goto :goto_f5

    .line 196
    :cond_d9
    new-instance v0, Lcom/ss/android/vesdk/VEEditor;

    iget-object v2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->veConfig:Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;

    invoke-virtual {v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->getVeCtrlSurface()Z

    move-result v2

    invoke-direct {v0, p1, p2, v2, p3}, Lcom/ss/android/vesdk/VEEditor;-><init>(Ljava/lang/String;Landroid/view/SurfaceView;ZLcom/ss/android/vesdk/VEUserConfig;)V

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    .line 200
    iput-object p2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->surfaceView:Landroid/view/SurfaceView;

    .line 202
    const-string p1, "surfaceView.post"

    invoke-static {v1, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance p1, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$3;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$3;-><init>(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;Landroid/view/SurfaceView;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 215
    :goto_f5
    new-instance p1, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;

    iget-object p2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    new-instance p3, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$4;

    invoke-direct {p3, p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$4;-><init>(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)V

    invoke-direct {p1, p2, p3}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;-><init>(Lcom/ss/android/vesdk/VEEditor;Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$KeyframeProxyCallback;)V

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->keyframeProxy:Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;

    .line 227
    new-instance p1, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;

    iget-object p2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-direct {p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->editorProxy:Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;

    .line 228
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const-string p2, "cutsame-player"

    invoke-virtual {p1, p2}, Lcom/ss/android/vesdk/VEEditor;->setEditorUsageType(Ljava/lang/String;)V

    .line 229
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/16 p2, 0x1e

    invoke-virtual {p1, p2}, Lcom/ss/android/vesdk/VEEditor;->setPreviewFps(I)I

    .line 230
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const-string p2, "#FF181818"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ss/android/vesdk/VEEditor;->setBackgroundColor(I)V

    .line 231
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    sget-object p2, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;->SCALE_MODE_CANVAS:Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    invoke-virtual {p1, p2}, Lcom/ss/android/vesdk/VEEditor;->setScaleMode(Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;)I

    .line 232
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    new-instance p2, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$5;

    invoke-direct {p2, p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$5;-><init>(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)V

    invoke-virtual {p1, p2}, Lcom/ss/android/vesdk/VEEditor;->setVideoOutputListener(Lcom/ss/android/vesdk/VEListener$VEVideoOutputListener;)V

    .line 246
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    new-instance p2, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$6;

    invoke-direct {p2, p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$6;-><init>(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)V

    invoke-virtual {p1, p2}, Lcom/ss/android/vesdk/VEEditor;->setmKeyFrameListener(Lcom/ss/android/vesdk/VEListener$VEKeyFrameListener;)V

    .line 293
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    new-instance p2, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$7;

    invoke-direct {p2, p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$7;-><init>(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)V

    invoke-virtual {p1, p2}, Lcom/ss/android/vesdk/VEEditor;->setOnInfoListener(Lcom/ss/android/vesdk/VECommonCallback;)V

    .line 331
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->asyncHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 332
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->asyncHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ss/android/vesdk/VEEditor;->setMessageHandlerLooper(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$000(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Lcom/bytedance/ies/cutsame/veadapter/VideoData;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->videoData:Lcom/bytedance/ies/cutsame/veadapter/VideoData;

    return-object p0
.end method

.method static synthetic access$100(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->veConfig:Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Landroid/os/HandlerThread;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->asyncHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$200(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Lcom/ss/android/vesdk/VEEditor;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;Lcom/bytedance/ies/cutsame/veadapter/VideoData;Landroid/view/SurfaceView;Lcom/ss/android/vesdk/VEEditor;)I
    .registers 4

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->initOrUpdateCanvas(Lcom/bytedance/ies/cutsame/veadapter/VideoData;Landroid/view/SurfaceView;Lcom/ss/android/vesdk/VEEditor;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    return-object p0
.end method

.method static synthetic access$500(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Ljava/lang/Object;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->statusListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$600(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mTemplatePlayerStatusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

    return-object p0
.end method

.method static synthetic access$602(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;)Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mTemplatePlayerStatusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

    return-object p1
.end method

.method static synthetic access$700(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Ljava/util/List;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->keyframeListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mFilterIndexSegmentMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$900(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Lcom/bytedance/ies/cutsame/veadapter/ISeekCommandFlushedListener;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->seekCommandFlushedListener:Lcom/bytedance/ies/cutsame/veadapter/ISeekCommandFlushedListener;

    return-object p0
.end method

.method private filterIndexOfSegment(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    .line 946
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result p1

    const/16 v0, -0x2b03

    const/16 v1, -0x14

    if-ne p1, v0, :cond_14

    .line 948
    const-string p0, "cut.VEEditorAdapter"

    const-string p1, "updateVideoKeyframe: index error"

    invoke-static {p0, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_14
    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 952
    filled-new-array {v2, v3, v0}, [I

    move-result-object v0

    const/4 v3, 0x0

    :goto_1c
    const/4 v4, 0x3

    if-ge v2, v4, :cond_33

    .line 953
    aget v3, v0, v2

    .line 954
    invoke-direct {p0, v3, p2, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFilterIndexMapKey(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 955
    iget-object v4, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mFilterIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_30

    goto :goto_33

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_33
    :goto_33
    if-nez v3, :cond_36

    return v1

    .line 963
    :cond_36
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private getEncodeProfile(Ljava/lang/String;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;
    .registers 4

    .line 2887
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->ENCODE_PROFILE_UNKNOWN:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    .line 2888
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_3c

    goto :goto_2e

    :sswitch_e
    const-string v0, "main"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_2e

    :cond_17
    const/4 v1, 0x2

    goto :goto_2e

    :sswitch_19
    const-string v0, "high"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    goto :goto_2e

    :cond_22
    const/4 v1, 0x1

    goto :goto_2e

    :sswitch_24
    const-string v0, "base"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    packed-switch v1, :pswitch_data_4a

    return-object p0

    .line 2896
    :pswitch_32
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->ENCODE_PROFILE_MAIN:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    return-object p0

    .line 2890
    :pswitch_35
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->ENCODE_PROFILE_HIGH:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    return-object p0

    .line 2893
    :pswitch_38
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->ENCODE_PROFILE_BASELINE:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    return-object p0

    nop

    :sswitch_data_3c
    .sparse-switch
        0x2e06d1 -> :sswitch_24
        0x30dda2 -> :sswitch_19
        0x3305b9 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_38
        :pswitch_35
        :pswitch_32
    .end packed-switch
.end method

.method private getFilterIndex(IILcom/bytedance/ies/cutsame/veadapter/FilterArgs;Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I
    .registers 14

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v3, p4

    .line 2783
    invoke-direct/range {v0 .. v8}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFilterIndex(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;JJ)I

    move-result p0

    return p0
.end method

.method private getFilterIndex(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;JJ)I
    .registers 19

    const/4 v0, 0x0

    if-gez p2, :cond_5

    move v3, v0

    goto :goto_6

    :cond_5
    move v3, p2

    .line 2788
    :goto_6
    invoke-virtual {p4}, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;->getFilterType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v3}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFilterIndexMapKey(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 2789
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mFilterIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1d

    .line 2791
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 2793
    :cond_1d
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    if-nez p1, :cond_24

    :goto_21
    move-wide v4, p5

    move v2, v0

    goto :goto_26

    :cond_24
    const/4 v0, 0x1

    goto :goto_21

    :goto_26
    long-to-int v5, v4

    move-wide/from16 v8, p7

    long-to-int v6, v8

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/ss/android/vesdk/VEEditor;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result p1

    if-ltz p1, :cond_80

    if-nez p2, :cond_40

    .line 2798
    invoke-virtual {p4}, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;->getKeyframeType()Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    move-result-object p2

    sget-object v0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->VIDEO:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    if-ne p2, v0, :cond_40

    .line 2799
    const-string p2, "SEGMENT_ID_VIDEO_MAIN_TRACK"

    invoke-virtual {p4, p2}, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;->setSegmentId(Ljava/lang/String;)V

    .line 2801
    :cond_40
    iget-object p2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mFilterIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v7, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2802
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mFilterIndexSegmentMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2803
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "put filterIndex:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",filterType:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;->getFilterType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",segmentId:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;->getSegmentId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "getFilterIndex"

    invoke-static {p2, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_80
    return p1
.end method

.method private getFilterIndexMapKey(ILjava/lang/String;I)Ljava/lang/String;
    .registers 4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_c

    const/4 p0, 0x2

    if-eq p1, p0, :cond_9

    .line 2820
    const-string p0, "video_filter_key"

    goto :goto_e

    .line 2818
    :cond_9
    const-string p0, "sticker_filter_key"

    goto :goto_e

    .line 2815
    :cond_c
    const-string p0, "audio_filter_key"

    .line 2823
    :goto_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "&"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMaterialType(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 5

    .line 353
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mFilterIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFilterIndexMapKey(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1c

    .line 355
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mFilterIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {p0, v1, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFilterIndexMapKey(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :cond_1c
    if-nez v0, :cond_2c

    .line 357
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mFilterIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFilterIndexMapKey(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :cond_2c
    return-object v0
.end method

.method private getProgress()J
    .registers 3

    .line 389
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v0, -0x17

    return-wide v0

    .line 391
    :cond_9
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->getCurPosition()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method private initOrUpdateCanvas(Lcom/bytedance/ies/cutsame/veadapter/VideoData;Landroid/view/SurfaceView;Lcom/ss/android/vesdk/VEEditor;)I
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 395
    const-string v2, "initOrUpdateCanvas: "

    const-string v3, "cut.VEEditorAdapter"

    invoke-static {v3, v2}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v2, v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->context:Landroid/content/Context;

    iget-object v4, v1, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->videoFilePaths:[Ljava/lang/String;

    invoke-direct {v0, v2, v4}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->replaceNativeResource(Landroid/content/Context;[Ljava/lang/String;)V

    const/16 v2, 0x438

    const/4 v4, 0x0

    if-nez p2, :cond_28

    .line 401
    iget-object v5, v1, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->veCanvasFilterParams:[Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;

    aget-object v5, v5, v4

    iget v6, v5, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->width:I

    if-eqz v6, :cond_20

    goto :goto_21

    :cond_20
    move v6, v2

    .line 402
    :goto_21
    iget v5, v5, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->height:I

    if-eqz v5, :cond_86

    move v2, v5

    goto/16 :goto_86

    .line 404
    :cond_28
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 405
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-lez v5, :cond_52

    if-gtz v6, :cond_35

    goto :goto_52

    .line 417
    :cond_35
    iget-object v7, v1, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->veCanvasFilterParams:[Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;

    if-eqz v7, :cond_50

    array-length v8, v7

    if-lez v8, :cond_50

    .line 418
    sget-object v2, Lcom/bytedance/ies/cutsame/util/CanvasUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/CanvasUtils;

    aget-object v7, v7, v4

    invoke-virtual {v2, v7, v5, v6}, Lcom/bytedance/ies/cutsame/util/CanvasUtils;->handleCanvasWidth(Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;II)Lcom/bytedance/ies/cutsame/util/Size;

    move-result-object v2

    iput-object v2, v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->configCanvasSize:Lcom/bytedance/ies/cutsame/util/Size;

    .line 419
    iget v7, v2, Lcom/bytedance/ies/cutsame/util/Size;->width:I

    .line 420
    iget v2, v2, Lcom/bytedance/ies/cutsame/util/Size;->height:I

    move/from16 v22, v7

    move v7, v2

    move/from16 v2, v22

    goto :goto_68

    :cond_50
    move v7, v2

    goto :goto_68

    .line 408
    :cond_52
    :goto_52
    iget-object v7, v1, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->veCanvasFilterParams:[Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;

    if-eqz v7, :cond_50

    array-length v8, v7

    if-lez v8, :cond_50

    .line 409
    aget-object v7, v7, v4

    iget v8, v7, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->width:I

    if-eqz v8, :cond_60

    goto :goto_61

    :cond_60
    move v8, v2

    .line 410
    :goto_61
    iget v7, v7, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->height:I

    if-eqz v7, :cond_66

    move v2, v7

    :cond_66
    move v7, v2

    move v2, v8

    .line 426
    :goto_68
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initSurfaceWidth: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " initSurfaceHeight: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v2

    move v2, v7

    .line 429
    :cond_86
    :goto_86
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initVEWidth: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " initVEHeight: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v5, v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->currentVECanvasSize:Lcom/bytedance/ies/cutsame/util/Size;

    iget v7, v5, Lcom/bytedance/ies/cutsame/util/Size;->width:I

    if-ne v6, v7, :cond_b2

    iget v5, v5, Lcom/bytedance/ies/cutsame/util/Size;->height:I

    if-ne v2, v5, :cond_b2

    .line 433
    const-string v0, "initOrUpdateCanvas, same size, not set"

    invoke-static {v3, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 437
    :cond_b2
    iget-object v5, v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVEInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v5, v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_136

    .line 439
    iget-object v3, v1, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->veCanvasFilterParams:[Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;

    if-eqz v3, :cond_df

    array-length v5, v3

    if-lez v5, :cond_df

    .line 440
    array-length v3, v3

    new-array v3, v3, [Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;

    move v5, v4

    .line 441
    :goto_c6
    iget-object v7, v1, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->veCanvasFilterParams:[Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;

    array-length v8, v7

    if-ge v5, v8, :cond_d6

    .line 442
    aget-object v7, v7, v5

    invoke-virtual {v7}, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->toVECanvasFilterParam()Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;

    move-result-object v7

    aput-object v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_c6

    .line 444
    :cond_d6
    aget-object v5, v3, v4

    iput v6, v5, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->width:I

    .line 445
    iput v2, v5, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->height:I

    :goto_dc
    move-object/from16 v18, v3

    goto :goto_e1

    :cond_df
    const/4 v3, 0x0

    goto :goto_dc

    .line 449
    :goto_e1
    iget-object v8, v1, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->videoFilePaths:[Ljava/lang/String;

    iget-object v9, v1, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->videoFileInfos:[Ljava/lang/String;

    iget-object v10, v1, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->vTrimIn:[I

    iget-object v11, v1, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->vTrimOut:[I

    iget-object v13, v1, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->audioFilePaths:[Ljava/lang/String;

    iget-object v14, v1, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->audioFileInfos:[Ljava/lang/String;

    iget-object v15, v1, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->aTrimIn:[I

    iget-object v3, v1, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->aTrimOut:[I

    iget-object v5, v1, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->speed:[F

    sget-object v19, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_ORIGINAL:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    sget-object v20, Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;->CENTER_IN_PARENT:Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    sget-object v21, Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;->CENTER:Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;

    const/4 v12, 0x0

    move-object/from16 v7, p3

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    invoke-virtual/range {v7 .. v21}, Lcom/ss/android/vesdk/VEEditor;->initWithCanvasAndInfos([Ljava/lang/String;[Ljava/lang/String;[I[I[Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;[Ljava/lang/String;[Ljava/lang/String;[I[I[F[Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;)I

    move-result v3

    if-gez v3, :cond_10b

    .line 452
    iget-object v5, v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVEInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 453
    :cond_10b
    new-instance v5, Lcom/bytedance/ies/cutsame/util/Size;

    invoke-direct {v5, v6, v2}, Lcom/bytedance/ies/cutsame/util/Size;-><init>(II)V

    iput-object v5, v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->currentVECanvasSize:Lcom/bytedance/ies/cutsame/util/Size;

    .line 456
    iget-object v1, v1, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->segmentIds:[Ljava/lang/String;

    array-length v2, v1

    if-lez v2, :cond_12a

    .line 457
    new-instance v2, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;

    aget-object v1, v1, v4

    const-string v5, "canvas blend"

    sget-object v6, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->VIDEO:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    invoke-direct {v2, v1, v5, v6}, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;)V

    .line 458
    new-instance v1, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;

    invoke-direct {v1}, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;-><init>()V

    invoke-direct {v0, v4, v4, v2, v1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFilterIndex(IILcom/bytedance/ies/cutsame/veadapter/FilterArgs;Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    .line 462
    :cond_12a
    iget-object v1, v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->veConfig:Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->getAutoPrepare()Z

    move-result v1

    if-eqz v1, :cond_135

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->prepare()I

    :cond_135
    return v3

    .line 466
    :cond_136
    const-string v1, "initOrUpdateCanvas: update canvas"

    invoke-static {v3, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-virtual {v0, v6, v2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->changeCanvas(II)I

    move-result v1

    if-eqz v1, :cond_156

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initOrUpdateCanvas: update canvas: result error "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 473
    :cond_156
    new-instance v1, Lcom/bytedance/ies/cutsame/util/Size;

    invoke-direct {v1, v6, v2}, Lcom/bytedance/ies/cutsame/util/Size;-><init>(II)V

    iput-object v1, v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->currentVECanvasSize:Lcom/bytedance/ies/cutsame/util/Size;

    .line 475
    invoke-virtual/range {p3 .. p3}, Lcom/ss/android/vesdk/VEEditor;->getState()Lcom/ss/android/vesdk/VEEditor$VEState;

    move-result-object v0

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initOrUpdateCanvas: update canvas: state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    sget-object v1, Lcom/ss/android/vesdk/VEEditor$VEState;->STARTED:Lcom/ss/android/vesdk/VEEditor$VEState;

    if-ne v0, v1, :cond_17e

    .line 478
    invoke-virtual/range {p3 .. p3}, Lcom/ss/android/vesdk/VEEditor;->play()I

    move-result v0

    return v0

    :cond_17e
    const/4 v0, -0x4

    return v0
.end method

.method private internalAdjustSpeed(IIJJ[F[FDZ)I
    .registers 15

    .line 764
    const-string v0, "cut.VEEditorAdapter"

    const-string v1, "internalAdjustSpeed: "

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 768
    :cond_10
    filled-new-array {p2}, [I

    move-result-object v0

    .line 769
    new-instance v1, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;

    invoke-direct {v1}, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;-><init>()V

    long-to-int v2, p3

    .line 770
    iput v2, v1, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimIn:I

    add-long/2addr p3, p5

    long-to-int p3, p3

    .line 771
    iput p3, v1, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimOut:I

    .line 772
    iput-object p8, v1, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->curveSpeedPointX:[F

    .line 773
    iput-object p7, v1, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->curveSpeedPointY:[F

    .line 775
    filled-new-array {v1}, [Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;

    move-result-object p3

    .line 776
    iput-wide p9, v1, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->speed:D

    .line 777
    iget-object p4, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 p5, 0x0

    invoke-virtual {p4, p5, p1, v0, p3}, Lcom/ss/android/vesdk/VEEditor;->updateClipsTimelineParam(II[I[Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I

    move-result p3

    .line 778
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    xor-int/lit8 p4, p11, 0x1

    invoke-virtual {p0, p5, p1, p2, p4}, Lcom/ss/android/vesdk/VEEditor;->setClipReservePitch(IIIZ)I

    return p3
.end method

.method private isVENotInit()Z
    .registers 1

    .line 2881
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVEInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private removeFilterIndex(II)V
    .registers 4

    .line 2827
    const-string v0, ""

    invoke-direct {p0, p1, v0, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFilterIndexMapKey(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 2828
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mFilterIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 2829
    :cond_10
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_26

    .line 2830
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 2831
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    :cond_26
    return-void
.end method

.method private replaceNativeResource(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 6

    .line 489
    const-string p0, "cut.VEEditorAdapter"

    const-string v0, "replaceNativeResource: "

    invoke-static {p0, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 490
    :goto_8
    array-length v0, p2

    if-ge p0, v0, :cond_5f

    .line 491
    const-string v0, "VIDEO_BLACK"

    aget-object v1, p2, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/material_black.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 493
    sget-object v1, Lcom/bytedance/ies/cutsame/util/FileUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/FileUtils;

    const-string v2, "material_black.png"

    invoke-virtual {v1, p1, v2, v0}, Lcom/bytedance/ies/cutsame/util/FileUtils;->copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    aput-object v0, p2, p0

    goto :goto_5c

    .line 495
    :cond_34
    const-string v0, "VIDEO_TRANSPARENT"

    aget-object v1, p2, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/material_transparent.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    sget-object v1, Lcom/bytedance/ies/cutsame/util/FileUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/FileUtils;

    const-string v2, "material_transparent.png"

    invoke-virtual {v1, p1, v2, v0}, Lcom/bytedance/ies/cutsame/util/FileUtils;->copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    aput-object v0, p2, p0

    :cond_5c
    :goto_5c
    add-int/lit8 p0, p0, 0x1

    goto :goto_8

    :cond_5f
    return-void
.end method

.method public static setNeedAuth(Z)V
    .registers 1

    .line 345
    sput-boolean p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->needAuth:Z

    return-void
.end method

.method private setVideoFiltersEnable(ZLjava/lang/String;)V
    .registers 6

    .line 688
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mFilterIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 689
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 690
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 691
    const-string v2, "video_filter_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_a

    .line 692
    :cond_1f
    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_a

    .line 693
    :cond_26
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mFilterIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setTrackFilterEnable(IZZ)I

    goto :goto_a

    :cond_37
    return-void
.end method

.method public static staticInit(Landroid/content/Context;)V
    .registers 3

    .line 379
    const-string v0, "cut.VEEditorAdapter"

    const-string v1, "initVESDK: "

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;

    invoke-virtual {v1, p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->getBaseDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;->VESDK:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VESDK;->init(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x7

    .line 381
    invoke-static {p0}, Lcom/ss/android/vesdk/VESDK;->setLogLevel(B)V

    const/4 p0, 0x0

    const/4 v0, 0x1

    .line 382
    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VESDK;->registerLogger(Lcom/ss/android/vesdk/VELogProtocol;Z)V

    const/16 p0, 0x2bc

    .line 384
    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VESDK;->enableHDH264HWDecoder(ZI)V

    .line 385
    invoke-static {v0}, Lcom/ss/android/vesdk/VESDK;->enableTTByteVC1Decoder(Z)V

    return-void
.end method


# virtual methods
.method public addAmazingFilter(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJI)I
    .registers 15

    .line 1664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAmazingFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8, p9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p10, p11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_51

    const/16 p0, -0x17

    return p0

    .line 1667
    :cond_51
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p3}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result p3

    const/16 v0, -0x2b03

    if-ne p3, v0, :cond_63

    .line 1669
    const-string p0, "addAmazingFilter: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0

    :cond_63
    move v0, p2

    move p2, p3

    .line 1672
    new-instance p3, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;

    invoke-direct {p3}, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;-><init>()V

    .line 1673
    iput-object p4, p3, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->path:Ljava/lang/String;

    .line 1674
    iput p7, p3, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->order:I

    .line 1675
    iput-object p5, p3, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->param:Ljava/lang/String;

    .line 1676
    iput v0, p3, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->amazingEngineType:I

    .line 1677
    iput p12, p3, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterDurationType:I

    .line 1679
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "&"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 1680
    sget-object p5, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->NONE:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    .line 1681
    const-string p7, "global_color_filter"

    invoke-virtual {p7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_96

    .line 1682
    sget-object p5, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->FILTER:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    :cond_94
    :goto_94
    move-object p1, p4

    goto :goto_a1

    .line 1683
    :cond_96
    sget-object p7, Lcom/bytedance/ies/cutsame/util/AdjustType;->INSTANCE:Lcom/bytedance/ies/cutsame/util/AdjustType;

    invoke-virtual {p7, p1}, Lcom/bytedance/ies/cutsame/util/AdjustType;->isAdjustType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_94

    .line 1684
    sget-object p5, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->ADJUST:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    goto :goto_94

    .line 1686
    :goto_a1
    new-instance p4, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;

    invoke-direct {p4, p6, p1, p5}, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;)V

    const/4 p1, 0x0

    move-wide p5, p8

    move-wide p7, p10

    .line 1687
    invoke-direct/range {p0 .. p8}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFilterIndex(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;JJ)I

    move-result p1

    if-gtz p1, :cond_b1

    const/4 p0, -0x1

    return p0

    .line 1691
    :cond_b1
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p1, p3}, Lcom/ss/android/vesdk/VEEditor;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    return p0
.end method

.method public addAmazingFilterNotType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJ)I
    .registers 24

    const/4 v2, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v1, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    .line 1643
    invoke-virtual/range {v0 .. v12}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->addAmazingFilter(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJI)I

    move-result p0

    return p0
.end method

.method public addAudioFade(Ljava/lang/String;JJ)I
    .registers 9

    .line 1868
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, -0x17

    return p0

    .line 1870
    :cond_9
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    const/16 v1, -0x2b03

    .line 1871
    const-string v2, "cut.VEEditorAdapter"

    if-ne v0, v1, :cond_1d

    .line 1872
    const-string p0, "addAudioFade: index error"

    invoke-static {v2, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0

    .line 1876
    :cond_1d
    const-string v1, "addAudioFade: "

    invoke-static {v2, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    new-instance v1, Lcom/ss/android/vesdk/filterparam/VEAudioFadeFilterParam;

    invoke-direct {v1}, Lcom/ss/android/vesdk/filterparam/VEAudioFadeFilterParam;-><init>()V

    long-to-int p2, p2

    .line 1878
    iput p2, v1, Lcom/ss/android/vesdk/filterparam/VEAudioFadeFilterParam;->fadeInLength:I

    long-to-int p2, p4

    .line 1879
    iput p2, v1, Lcom/ss/android/vesdk/filterparam/VEAudioFadeFilterParam;->fadeOutLength:I

    .line 1880
    new-instance p2, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;

    const-string p3, "audio fading"

    sget-object p4, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->NONE:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    invoke-direct {p2, p1, p3, p4}, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;)V

    .line 1881
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 p3, 0x1

    .line 1882
    invoke-direct {p0, p3, v0, p2, v1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFilterIndex(IILcom/bytedance/ies/cutsame/veadapter/FilterArgs;Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    const/4 p2, 0x0

    .line 1881
    invoke-virtual {p1, p2, p0, v1}, Lcom/ss/android/vesdk/VEEditor;->updateTrackClipFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    return p0
.end method

.method public addAudioTrack(Ljava/lang/String;Ljava/lang/String;IIII)I
    .registers 15

    .line 1093
    const-string v0, "cut.VEEditorAdapter"

    const-string v1, "addAudioTrack: "

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 1096
    :cond_10
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v7}, Lcom/ss/android/vesdk/VEEditor;->addAudioTrack(Ljava/lang/String;IIIIZZ)I

    move-result p2

    if-gez p2, :cond_20

    return p2

    .line 1098
    :cond_20
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->addSegment(Ljava/lang/String;I)V

    return p2
.end method

.method public addAudioTrack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJFZ)I
    .registers 21

    move-wide v0, p6

    move-wide/from16 v2, p8

    .line 1072
    const-string v4, "cut.VEEditorAdapter"

    const-string v5, "addAudioTrack: "

    invoke-static {v4, v5}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v4

    if-eqz v4, :cond_13

    const/16 p0, -0x17

    return p0

    .line 1075
    :cond_13
    iget-object v4, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    long-to-int v5, p4

    add-long/2addr p4, v2

    long-to-int p4, p4

    move p5, v5

    long-to-int v5, v0

    long-to-float v0, v0

    long-to-float v1, v2

    div-float v1, v1, p10

    add-float/2addr v0, v1

    float-to-int v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, p2

    move-object v2, p3

    move v3, p5

    move-object v0, v4

    move v4, p4

    invoke-virtual/range {v0 .. v8}, Lcom/ss/android/vesdk/VEEditor;->addAudioTrackWithInfo(Ljava/lang/String;Ljava/lang/String;IIIIZZ)I

    move-result p2

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p3, p10, p3

    if-eqz p3, :cond_3a

    .line 1085
    iget-object p3, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 p4, 0x1

    const/4 p5, 0x0

    move/from16 v0, p11

    invoke-virtual {p3, p4, p2, p5, v0}, Lcom/ss/android/vesdk/VEEditor;->setClipReservePitch(IIIZ)I

    :cond_3a
    if-gez p2, :cond_3d

    return p2

    .line 1088
    :cond_3d
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->addSegment(Ljava/lang/String;I)V

    return p2
.end method

.method public addAudioTrackNotFileInfo(Ljava/lang/String;Ljava/lang/String;JJJFZ)I
    .registers 25

    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAudioTrack: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", audioInTimeInMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, p3

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", beginTimeInMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, p5

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, p7

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p9

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", reverse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p10

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 1067
    invoke-virtual/range {v2 .. v13}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->addAudioTrack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJFZ)I

    move-result p0

    return p0
.end method

.method public addInfoEffect(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZI)I
    .registers 22

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    .line 1292
    invoke-virtual/range {v0 .. v11}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->addInfoEffectWithOffset(Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;ZI)I

    move-result p0

    return p0
.end method

.method public addInfoEffectWithOffset(Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;ZI)I
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v9, p7

    move-object/from16 v3, p9

    move/from16 v4, p11

    const/4 v5, 0x0

    if-eqz p10, :cond_11

    move v6, v5

    goto :goto_12

    :cond_11
    const/4 v6, 0x2

    .line 1304
    :goto_12
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addAmazingFilter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " video_effect "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "{\"intensity\":1.0}"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, p3

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, p5

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "cut.VEEditorAdapter"

    invoke-static {v8, v7}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    invoke-direct {v0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v7

    if-eqz v7, :cond_65

    const/16 v0, -0x17

    return v0

    .line 1306
    :cond_65
    iget-object v7, v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v7, v3}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v3

    const/16 v7, -0x2b03

    if-ne v3, v7, :cond_77

    .line 1308
    const-string v0, "addAmazingFilter: index error"

    invoke-static {v8, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x14

    return v0

    :cond_77
    move v7, v3

    .line 1311
    new-instance v3, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;

    invoke-direct {v3}, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;-><init>()V

    .line 1312
    iput-object v2, v3, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->path:Ljava/lang/String;

    .line 1313
    iput v4, v3, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->order:I

    .line 1314
    iput-object v11, v3, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->param:Ljava/lang/String;

    .line 1315
    iput v6, v3, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->amazingEngineType:I

    .line 1316
    iput v5, v3, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterDurationType:I

    .line 1318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video_effect&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1319
    new-instance v4, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;

    sget-object v5, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->NONE:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    invoke-direct {v4, v1, v2, v5}, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;)V

    const/4 v1, 0x0

    move v2, v7

    move-wide v5, v12

    move-wide v7, v14

    .line 1320
    invoke-direct/range {v0 .. v8}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFilterIndex(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;JJ)I

    move-result v1

    if-gtz v1, :cond_ab

    const/4 v0, -0x1

    return v0

    :cond_ab
    const-wide/16 v4, 0x0

    cmp-long v2, v9, v4

    if-lez v2, :cond_bb

    .line 1325
    iget-object v2, v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    long-to-int v4, v9

    invoke-virtual {v2, v1, v4}, Lcom/ss/android/vesdk/VEEditor;->setFilterInTimeOffset(II)I

    move-result v2

    if-gez v2, :cond_bb

    return v2

    .line 1328
    :cond_bb
    iget-object v0, v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0, v1, v3}, Lcom/ss/android/vesdk/VEEditor;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result v0

    return v0
.end method

.method public addInfoSticker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFJJFFZZIJ)I
    .registers 34

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    .line 1406
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addInfoSticker: path "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    move-wide/from16 v0, p15

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v4, "cut.VEEditorAdapter"

    invoke-static {v4, v15}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v15

    if-eqz v15, :cond_7d

    const/16 v0, -0x17

    return v0

    :cond_7d
    if-eqz v2, :cond_89

    .line 1411
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_86

    goto :goto_89

    :cond_86
    move-object/from16 v4, p0

    goto :goto_93

    :cond_89
    :goto_89
    if-eqz v3, :cond_125

    .line 1412
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_86

    goto/16 :goto_125

    .line 1417
    :goto_93
    iget-object v15, v4, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v15, v2, v3}, Lcom/ss/android/vesdk/VEEditor;->addInfoStickerOrEmoji(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_9d

    goto/16 :goto_124

    .line 1419
    :cond_9d
    iget-object v15, v4, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    move-object/from16 v2, p1

    invoke-virtual {v15, v2, v3}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->addSegment(Ljava/lang/String;I)V

    .line 1421
    new-instance v15, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;

    sget-object v14, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->STICKER:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    const-string v0, "info_sticker"

    invoke-direct {v15, v2, v0, v14}, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;)V

    const/4 v1, 0x2

    .line 1422
    invoke-direct {v4, v1, v0, v3}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFilterIndexMapKey(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1423
    iget-object v1, v4, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mFilterIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    iget-object v0, v4, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mFilterIndexSegmentMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_d0

    .line 1428
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_cd

    goto :goto_d0

    :cond_cd
    move/from16 v0, p4

    goto :goto_d4

    :cond_d0
    :goto_d0
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p4, v0

    .line 1431
    :goto_d4
    iget-object v1, v4, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v1, v3, v0}, Lcom/ss/android/vesdk/VEEditor;->setInfoStickerScale(IF)I

    move-result v0

    if-gez v0, :cond_dd

    return v0

    .line 1436
    :cond_dd
    iget-object v0, v4, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    long-to-int v1, v6

    long-to-int v2, v8

    invoke-virtual {v0, v3, v1, v2}, Lcom/ss/android/vesdk/VEEditor;->setInfoStickerTime(III)I

    move-result v0

    if-gez v0, :cond_e8

    return v0

    .line 1441
    :cond_e8
    iget-object v0, v4, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0, v3, v10, v11}, Lcom/ss/android/vesdk/VEEditor;->setInfoStickerPosition(IFF)I

    move-result v0

    if-gez v0, :cond_f1

    return v0

    :cond_f1
    const/4 v0, 0x0

    cmpl-float v0, v5, v0

    if-eqz v0, :cond_100

    .line 1447
    iget-object v0, v4, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    neg-float v1, v5

    invoke-virtual {v0, v3, v1}, Lcom/ss/android/vesdk/VEEditor;->setInfoStickerRotation(IF)I

    move-result v0

    if-gez v0, :cond_100

    return v0

    :cond_100
    if-nez v12, :cond_104

    if-eqz v13, :cond_109

    .line 1454
    :cond_104
    iget-object v0, v4, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0, v3, v12, v13}, Lcom/ss/android/vesdk/VEEditor;->setInfoStickerFlip(IZZ)I

    :cond_109
    const-wide/16 v0, 0x0

    cmp-long v0, p15, v0

    if-lez v0, :cond_117

    .line 1463
    iget-object v0, v4, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    move-wide/from16 v1, p15

    long-to-int v1, v1

    invoke-virtual {v0, v3, v1}, Lcom/ss/android/vesdk/VEEditor;->setFilterInTimeOffset(II)I

    :cond_117
    if-lez p14, :cond_124

    .line 1467
    iget-object v0, v4, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    move/from16 v14, p14

    invoke-virtual {v0, v3, v14}, Lcom/ss/android/vesdk/VEEditor;->setInfoStickerLayer(II)I

    move-result v0

    if-gez v0, :cond_124

    return v0

    :cond_124
    :goto_124
    return v3

    .line 1413
    :cond_125
    :goto_125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addInfoSticker: param error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x13

    return v0
.end method

.method public addKeyframeListener(Lcom/bytedance/ies/cutsame/veadapter/KeyframeListener;)Ljava/lang/Boolean;
    .registers 2

    .line 365
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->keyframeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public addMetadata(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 1637
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VEEditor;->addMetadata(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public addSubVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJIFFFFFILjava/lang/String;II)I
    .registers 29

    move/from16 v0, p15

    move/from16 v1, p16

    move/from16 v2, p17

    move/from16 v3, p18

    .line 987
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addSubVideo: segmentId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", degree="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", scaleFactor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", transX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", transY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cut.VEEditorAdapter"

    invoke-static {v5, v4}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v4

    if-eqz v4, :cond_47

    const/16 p0, -0x17

    return p0

    .line 994
    :cond_47
    new-instance v4, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;

    invoke-direct {v4}, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;-><init>()V

    move/from16 v5, p14

    .line 995
    iput v5, v4, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->alpha:F

    .line 996
    iput v0, v4, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->degree:F

    .line 997
    iput v1, v4, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->scaleFactor:F

    .line 998
    iput v2, v4, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->transX:F

    .line 999
    iput v3, v4, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->transY:F

    move/from16 v0, p19

    .line 1000
    iput v0, v4, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->mirror:I

    move-object/from16 v0, p20

    .line 1001
    iput-object v0, v4, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->animPath:Ljava/lang/String;

    move/from16 v0, p21

    .line 1002
    iput v0, v4, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->animStartTime:I

    move/from16 v0, p22

    .line 1003
    iput v0, v4, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->animEndTime:I

    .line 1004
    sget-object v0, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam$paramType;->UPDATE_VIDEO_ANIMATION_AND_ANIMATION:Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam$paramType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, v4, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->transformType:I

    .line 1005
    iput-object p4, v4, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->blendModePath:Ljava/lang/String;

    .line 1006
    iget-object p4, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    long-to-int p5, p5

    long-to-int p6, p7

    move-wide v0, p9

    long-to-int v0, v0

    move-wide/from16 v1, p11

    long-to-int v1, v1

    move p7, p5

    move p8, p6

    move/from16 p11, p13

    move p9, v0

    move/from16 p10, v1

    move-object p5, p2

    move-object p6, p3

    invoke-virtual/range {p4 .. p11}, Lcom/ss/android/vesdk/VEEditor;->addExternalVideoTrackWithFileInfo(Ljava/lang/String;Ljava/lang/String;IIIII)I

    move-result p2

    if-gez p2, :cond_8b

    return p2

    .line 1008
    :cond_8b
    new-instance p3, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;

    const-string p4, "canvas blend"

    sget-object p5, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->VIDEO:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    invoke-direct {p3, p1, p4, p5}, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;)V

    .line 1009
    iget-object p4, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 p5, 0x0

    invoke-direct {p0, p5, p2, p3, v4}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFilterIndex(IILcom/bytedance/ies/cutsame/veadapter/FilterArgs;Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p3

    invoke-virtual {p4, p5, p3, v4}, Lcom/ss/android/vesdk/VEEditor;->updateTrackClipFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p3

    if-gez p3, :cond_a2

    return p3

    .line 1011
    :cond_a2
    iget-object p3, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->addSegment(Ljava/lang/String;I)V

    .line 1012
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->addOtherSegmentClip(Ljava/lang/String;)V

    return p2
.end method

.method public addTextSticker(Ljava/lang/String;Ljava/lang/String;JJJFFZZFFJ)I
    .registers 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move/from16 v9, p11

    move/from16 v10, p12

    move/from16 v11, p14

    .line 1481
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addTextSticker: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "cut.VEEditorAdapter"

    invoke-static {v15, v14}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    invoke-direct {v0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v14

    if-eqz v14, :cond_3f

    const/16 v0, -0x17

    return v0

    .line 1484
    :cond_3f
    iget-object v14, v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v14, v2}, Lcom/ss/android/vesdk/VEEditor;->addTextSticker(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_49

    goto/16 :goto_d2

    .line 1486
    :cond_49
    iget-object v14, v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v14, v1, v2}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->addSegment(Ljava/lang/String;I)V

    .line 1488
    new-instance v14, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;

    sget-object v15, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->TEXT:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    const-string v12, "text_sticker"

    invoke-direct {v14, v1, v12, v15}, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;)V

    const/4 v1, 0x2

    .line 1489
    invoke-direct {v0, v1, v12, v2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFilterIndexMapKey(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1490
    iget-object v12, v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mFilterIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v1, v13}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1491
    iget-object v1, v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mFilterIndexSegmentMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12, v14}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v12, 0x0

    cmp-long v1, v3, v12

    if-lez v1, :cond_7e

    .line 1495
    iget-object v1, v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    long-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/vesdk/VEEditor;->setInfoStickerLayer(II)I

    move-result v1

    if-gez v1, :cond_7e

    return v1

    .line 1501
    :cond_7e
    iget-object v1, v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    long-to-int v3, v5

    long-to-int v4, v7

    invoke-virtual {v1, v2, v3, v4}, Lcom/ss/android/vesdk/VEEditor;->setInfoStickerTime(III)I

    move-result v1

    if-gez v1, :cond_89

    return v1

    .line 1506
    :cond_89
    iget-object v1, v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    move/from16 v3, p9

    move/from16 v4, p10

    invoke-virtual {v1, v2, v3, v4}, Lcom/ss/android/vesdk/VEEditor;->setInfoStickerPosition(IFF)I

    move-result v1

    if-gez v1, :cond_96

    return v1

    :cond_96
    if-nez v9, :cond_9a

    if-eqz v10, :cond_a3

    .line 1512
    :cond_9a
    iget-object v1, v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v1, v2, v9, v10}, Lcom/ss/android/vesdk/VEEditor;->setInfoStickerFlip(IZZ)I

    move-result v1

    if-gez v1, :cond_a3

    return v1

    .line 1518
    :cond_a3
    iget-object v1, v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    move/from16 v3, p13

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/vesdk/VEEditor;->setInfoStickerScale(IF)I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x0

    cmpg-float v4, v1, v3

    if-gez v4, :cond_b8

    float-to-double v0, v1

    .line 1520
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    :cond_b8
    cmpl-float v1, v11, v3

    if-eqz v1, :cond_c6

    .line 1524
    iget-object v1, v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    neg-float v3, v11

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/vesdk/VEEditor;->setInfoStickerRotation(IF)I

    move-result v1

    if-gez v1, :cond_c6

    return v1

    :cond_c6
    cmp-long v1, p15, v12

    if-lez v1, :cond_d2

    .line 1531
    iget-object v0, v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    move-wide/from16 v12, p15

    long-to-int v1, v12

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEEditor;->setFilterInTimeOffset(II)I

    :cond_d2
    :goto_d2
    return v2
.end method

.method public addTextTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 1538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addTextTemplate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/16 p0, -0x17

    return p0

    .line 1540
    :cond_2d
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0, p2, p3}, Lcom/ss/android/vesdk/VEEditor;->addInfoStickerTemplate(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-gez p2, :cond_36

    return p2

    .line 1542
    :cond_36
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->addSegment(Ljava/lang/String;I)V

    return p2
.end method

.method public addVideo([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[I[I)I
    .registers 12

    .line 2300
    const-string v0, "addVideo: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2301
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    :cond_10
    if-nez p2, :cond_19

    .line 2306
    iget-object p2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {p2}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getMainSegmentSize()I

    move-result p2

    goto :goto_2b

    .line 2308
    :cond_19
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result p2

    const/16 v0, -0x2b03

    if-ne p2, v0, :cond_2b

    .line 2310
    const-string p0, "addVideo: start index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0

    :cond_2b
    :goto_2b
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 2314
    :goto_2e
    array-length v3, p1

    if-ge v1, v3, :cond_65

    .line 2315
    new-instance v2, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;

    invoke-direct {v2}, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;-><init>()V

    .line 2316
    new-instance v3, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;

    invoke-direct {v3}, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;-><init>()V

    .line 2317
    aget-object v4, p3, v1

    iput-object v4, v2, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;->clipFilePath:Ljava/lang/String;

    .line 2318
    iput v0, v2, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;->sourceType:I

    .line 2319
    aget v4, p4, v1

    iput v4, v3, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimIn:I

    .line 2320
    aget v4, p5, v1

    iput v4, v3, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimOut:I

    add-int v4, p2, v1

    .line 2322
    iget-object v5, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v5, v0, v4, v2, v3}, Lcom/ss/android/vesdk/VEEditor;->insertClip(IILcom/ss/android/vesdk/clipparam/VEClipSourceParam;Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I

    move-result v2

    if-gez v2, :cond_54

    goto :goto_62

    .line 2324
    :cond_54
    iget-object v3, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    aget-object v5, p1, v1

    invoke-virtual {v3, v5, v0}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->addSegment(Ljava/lang/String;I)V

    .line 2325
    iget-object v3, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    aget-object v5, p1, v1

    invoke-virtual {v3, v5, v4}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->addMainSegmentClipIndex(Ljava/lang/String;I)V

    :goto_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_65
    return v2
.end method

.method public addVideoAtLast(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 9

    .line 2334
    const-string v0, "addVideoAtLast: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2335
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 2337
    :cond_10
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getMainSegmentSize()I

    move-result v0

    .line 2338
    new-instance v2, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;

    invoke-direct {v2}, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;-><init>()V

    .line 2339
    new-instance v3, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;

    invoke-direct {v3}, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;-><init>()V

    .line 2340
    iput-object p2, v2, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;->clipFilePath:Ljava/lang/String;

    const/4 p2, 0x0

    .line 2341
    iput p2, v2, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;->sourceType:I

    .line 2342
    iput p3, v3, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimIn:I

    .line 2343
    iput p4, v3, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimOut:I

    .line 2344
    iget-object p3, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p3, p2, v0, v2, v3}, Lcom/ss/android/vesdk/VEEditor;->insertClip(IILcom/ss/android/vesdk/clipparam/VEClipSourceParam;Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I

    move-result p3

    if-gez p3, :cond_47

    .line 2346
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "addVideoAtLast: add error "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 2350
    :cond_47
    iget-object p4, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {p4, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->addSegment(Ljava/lang/String;I)V

    .line 2351
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->addMainSegmentClipIndex(Ljava/lang/String;I)V

    return p3
.end method

.method public adjustInfoSticker(Ljava/lang/String;FFFFIFIIZZZZ)I
    .registers 17

    .line 2469
    const-string v0, "adjustInfoSticker: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2470
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 2472
    :cond_10
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    const/16 v2, -0x2b03

    if-ne v0, v2, :cond_31

    .line 2474
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "adjustInfoSticker: seg id not found "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0

    :cond_31
    if-lez p6, :cond_38

    .line 2479
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v1, v0, p6}, Lcom/ss/android/vesdk/VEEditor;->setInfoStickerLayer(II)I

    .line 2481
    :cond_38
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v1, v0, p7}, Lcom/ss/android/vesdk/VEEditor;->setInfoStickerAlpha(IF)I

    .line 2482
    iget-object p7, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p7, v0, p8, p9}, Lcom/ss/android/vesdk/VEEditor;->setInfoStickerTime(III)I

    if-eqz p10, :cond_49

    .line 2484
    iget-object p7, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p7, v0, p11, p12}, Lcom/ss/android/vesdk/VEEditor;->setInfoStickerFlip(IZZ)I

    .line 2486
    :cond_49
    invoke-virtual/range {p0 .. p6}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->layoutInfoSticker(Ljava/lang/String;FFFFI)I

    if-eqz p13, :cond_53

    .line 2488
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->refreshCurrentFrame()I

    :cond_53
    const/4 p0, 0x0

    return p0
.end method

.method public adjustSpeed(Ljava/lang/String;JJIFLjava/lang/String;Z)I
    .registers 22

    move/from16 v2, p6

    move/from16 v3, p7

    move-object/from16 v4, p8

    .line 716
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjustSpeed: mode is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " start "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " duration "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, p4

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " speed "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " param "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v10, "cut.VEEditorAdapter"

    invoke-static {v10, v5}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v5

    if-eqz v5, :cond_47

    const/16 v0, -0x17

    return v0

    .line 719
    :cond_47
    iget-object v5, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v5, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v5

    .line 720
    iget-object v11, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v11, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v11, -0x2b03

    if-eq v5, v11, :cond_ca

    if-ne v1, v11, :cond_5b

    goto/16 :goto_ca

    :cond_5b
    if-nez v2, :cond_6d

    const/4 v8, 0x0

    float-to-double v9, v3

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v3, p2

    move/from16 v11, p9

    move v2, v1

    move v1, v5

    move-wide/from16 v5, p4

    .line 728
    invoke-direct/range {v0 .. v11}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->internalAdjustSpeed(IIJJ[F[FDZ)I

    move-result v0

    return v0

    :cond_6d
    move v2, v1

    move v1, v5

    .line 731
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 732
    const-string v0, "curveParamJson is empty"

    invoke-static {v10, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x13

    return v0

    .line 737
    :cond_7d
    :try_start_7d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 738
    const-string v3, "speed_points"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 739
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 740
    new-array v4, v3, [F

    .line 741
    new-array v7, v3, [F

    const/4 v5, 0x0

    :goto_91
    if-ge v5, v3, :cond_ac

    .line 743
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 744
    const-string v8, "x"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    double-to-float v8, v8

    .line 745
    const-string v9, "y"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    double-to-float v6, v9

    .line 746
    aput v8, v4, v5

    .line 747
    aput v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_91

    .line 749
    :cond_ac
    invoke-static {v4, v7}, Lcom/ss/android/vesdk/VECurveSpeedUtils;->transferTrimPointXtoSeqPointX([F[F)[F

    move-result-object v8

    .line 750
    new-instance v0, Lcom/ss/android/vesdk/VECurveSpeedUtils;

    invoke-direct {v0, v8, v7}, Lcom/ss/android/vesdk/VECurveSpeedUtils;-><init>([F[F)V

    .line 751
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECurveSpeedUtils;->getAveCurveSpeed()D

    move-result-wide v9

    const/4 v11, 0x0

    move-object v0, p0

    move-wide v3, p2

    move-wide/from16 v5, p4

    .line 752
    invoke-direct/range {v0 .. v11}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->internalAdjustSpeed(IIJJ[F[FDZ)I

    move-result v0
    :try_end_c2
    .catch Lorg/json/JSONException; {:try_start_7d .. :try_end_c2} :catch_c3

    return v0

    :catch_c3
    move-exception v0

    .line 754
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 v0, -0x18

    return v0

    .line 722
    :cond_ca
    :goto_ca
    const-string v0, "adjustSpeed: index error"

    invoke-static {v10, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x14

    return v0
.end method

.method public adjustStickerScale(Ljava/lang/String;F)F
    .registers 5

    .line 2514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustStickerScale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2515
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/high16 p0, -0x3e480000    # -23.0f

    return p0

    .line 2516
    :cond_1f
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result p1

    const/16 v0, -0x2b03

    if-ne p1, v0, :cond_31

    .line 2518
    const-string p0, "adjustStickerScale: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p0, -0x3e600000    # -20.0f

    return p0

    .line 2521
    :cond_31
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VEEditor;->setInfoStickerScale(IF)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public adjustVideo(Ljava/lang/String;IIFZ[F[F)I
    .registers 11

    .line 2533
    const-string v0, "adjustVideo: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2534
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 2536
    :cond_10
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    .line 2537
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v2, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result p1

    const/16 v2, -0x2b03

    if-eq v0, v2, :cond_4f

    if-ne p1, v2, :cond_23

    goto :goto_4f

    .line 2543
    :cond_23
    filled-new-array {p1}, [I

    move-result-object v1

    .line 2544
    new-instance v2, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;

    invoke-direct {v2}, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;-><init>()V

    .line 2545
    iput p2, v2, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimIn:I

    add-int/2addr p2, p3

    .line 2546
    iput p2, v2, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimOut:I

    float-to-double p2, p4

    .line 2547
    iput-wide p2, v2, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->speed:D

    if-eqz p6, :cond_38

    .line 2549
    iput-object p6, v2, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->curveSpeedPointX:[F

    :cond_38
    if-eqz p7, :cond_3c

    .line 2552
    iput-object p7, v2, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->curveSpeedPointY:[F

    .line 2555
    :cond_3c
    filled-new-array {v2}, [Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;

    move-result-object p2

    .line 2557
    iget-object p3, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, v0, v1, p2}, Lcom/ss/android/vesdk/VEEditor;->updateClipsTimelineParam(II[I[Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I

    move-result p2

    .line 2558
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    xor-int/lit8 p3, p5, 0x1

    invoke-virtual {p0, p4, v0, p1, p3}, Lcom/ss/android/vesdk/VEEditor;->setClipReservePitch(IIIZ)I

    return p2

    .line 2539
    :cond_4f
    :goto_4f
    const-string p0, "adjustVideo: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0
.end method

.method public adjustVolume(Ljava/lang/String;IF)I
    .registers 9

    .line 1841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustVolume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/16 p0, -0x17

    return p0

    .line 1844
    :cond_2d
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    const/16 v2, -0x2b03

    if-ne v0, v2, :cond_3f

    .line 1846
    const-string p0, "adjustVolume: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0

    .line 1850
    :cond_3f
    new-instance v1, Lcom/ss/android/vesdk/filterparam/VEAudioVolumeFilterParam;

    invoke-direct {v1}, Lcom/ss/android/vesdk/filterparam/VEAudioVolumeFilterParam;-><init>()V

    .line 1851
    iput p3, v1, Lcom/ss/android/vesdk/filterparam/VEAudioVolumeFilterParam;->volume:F

    const/4 p3, 0x1

    if-ne p2, p3, :cond_4d

    .line 1856
    sget-object p3, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->AUDIO:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    const/4 v2, 0x0

    goto :goto_55

    .line 1858
    :cond_4d
    iget-object p3, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {p3, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result v2

    .line 1859
    sget-object p3, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->VIDEO:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    .line 1861
    :goto_55
    new-instance v3, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;

    const-string v4, "audio volume filter"

    invoke-direct {v3, p1, v4, p3}, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;)V

    .line 1862
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    .line 1863
    invoke-direct {p0, p2, v0, v3, v1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFilterIndex(IILcom/bytedance/ies/cutsame/veadapter/FilterArgs;Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    .line 1862
    invoke-virtual {p1, v2, p0, v1}, Lcom/ss/android/vesdk/VEEditor;->updateTrackClipFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    return p0
.end method

.method public calculateAveCurveSpeed(Ljava/lang/String;)F
    .registers 2

    .line 760
    sget-object p0, Lcom/bytedance/ies/cutsame/util/VEUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/VEUtils;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/util/VEUtils;->calculateAveCurveSpeed(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public cancelCompile()V
    .registers 3

    .line 2263
    const-string v0, "cut.VEEditorAdapter"

    const-string v1, "cancelCompile: "

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2264
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 2266
    :cond_e
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->stop()V

    .line 2267
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->prepare()I

    return-void
.end method

.method public cancelGetVideoFrames()I
    .registers 3

    .line 2586
    const-string v0, "cut.VEEditorAdapter"

    const-string v1, "cancelGetVideoFrames: "

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2587
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->cancelGetVideoFrames()I

    move-result p0

    return p0
.end method

.method public changeCanvas(II)I
    .registers 5

    .line 2452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeCanvas: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2453
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_27

    const/16 p0, -0x17

    return p0

    .line 2455
    :cond_27
    new-instance v0, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;

    invoke-direct {v0}, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;-><init>()V

    .line 2456
    iput p1, v0, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->width:I

    .line 2457
    iput p2, v0, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->height:I

    .line 2458
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEEditor;->updateCanvasResolutionParam(Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;)I

    move-result p1

    if-nez p1, :cond_3b

    .line 2460
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->refreshCurrentFrame()I

    :cond_3b
    return p1
.end method

.method public changeVoice(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 9

    .line 1793
    const-string v0, "changeVoice: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1794
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 1796
    :cond_10
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    const/16 v2, -0x2b03

    if-ne v0, v2, :cond_22

    .line 1798
    const-string p0, "changeVoice: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0

    .line 1802
    :cond_22
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, -0x13

    if-eqz v1, :cond_2b

    return v2

    .line 1805
    :cond_2b
    sget-object v1, Lcom/bytedance/ies/cutsame/veadapter/VEVoiceEffectData;->INSTANCE:Lcom/bytedance/ies/cutsame/veadapter/VEVoiceEffectData;

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/veadapter/VEVoiceEffectData;->getAUDIO_EFFECT_MAP()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_3a

    return v2

    :cond_3a
    const/16 v1, -0x18

    .line 1810
    :try_start_3c
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->gson:Lcom/google/gson/Gson;

    const-class v3, Lcom/ss/android/vesdk/VEAudioEffectBean;

    invoke-virtual {v2, p2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/vesdk/VEAudioEffectBean;

    if-nez p2, :cond_49

    return v1

    .line 1814
    :cond_49
    new-instance v2, Lcom/ss/android/vesdk/filterparam/VEAudioEffectFilterParam;

    invoke-direct {v2}, Lcom/ss/android/vesdk/filterparam/VEAudioEffectFilterParam;-><init>()V

    .line 1815
    iput-object p2, v2, Lcom/ss/android/vesdk/filterparam/VEAudioEffectFilterParam;->audioEffectBean:Lcom/ss/android/vesdk/VEAudioEffectBean;

    .line 1816
    new-instance p2, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;

    const-string v3, "audio effect"

    sget-object v4, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->NONE:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    invoke-direct {p2, p1, v3, v4}, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;)V

    .line 1817
    invoke-direct {p0, p3, v0, p2, v2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFilterIndex(IILcom/bytedance/ies/cutsame/veadapter/FilterArgs;Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p3, v0, :cond_62

    const/4 p1, 0x0

    goto :goto_68

    .line 1822
    :cond_62
    iget-object p3, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {p3, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result p1

    .line 1824
    :goto_68
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p1, p2, v2}, Lcom/ss/android/vesdk/VEEditor;->updateTrackClipFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0
    :try_end_6e
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_3c .. :try_end_6e} :catch_6f

    return p0

    :catch_6f
    return v1
.end method

.method public chroma(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 9

    .line 1266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chroma: path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", paramJson="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", renderIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 p0, -0x17

    return p0

    .line 1269
    :cond_2f
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    .line 1270
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v2, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result v2

    const/16 v3, -0x2b03

    if-eq v0, v3, :cond_71

    if-ne v2, v3, :cond_42

    goto :goto_71

    .line 1276
    :cond_42
    new-instance v0, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;

    invoke-direct {v0}, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;-><init>()V

    .line 1277
    iput p4, v0, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->order:I

    .line 1278
    iput-object p2, v0, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->path:Ljava/lang/String;

    .line 1279
    iput-object p3, v0, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->param:Ljava/lang/String;

    const/4 p2, 0x1

    .line 1281
    iput p2, v0, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterDurationType:I

    .line 1284
    new-instance p2, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;

    const-string p3, "chroma"

    sget-object p4, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->VIDEO:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    invoke-direct {p2, p1, p3, p4}, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;)V

    .line 1285
    iget-object p3, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    iget-object p4, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {p4, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result p4

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    .line 1286
    invoke-virtual {v1, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFilterIndex(IILcom/bytedance/ies/cutsame/veadapter/FilterArgs;Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    .line 1285
    invoke-virtual {p3, p4, p0, v0}, Lcom/ss/android/vesdk/VEEditor;->updateTrackClipFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    return p0

    .line 1272
    :cond_71
    :goto_71
    const-string p0, "chroma: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0
.end method

.method public compile(Ljava/lang/String;Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;Lcom/bytedance/ies/cutsame/veadapter/CompileListener;)I
    .registers 17

    .line 1917
    const-string v0, "compile: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 1920
    :cond_10
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->pause()I

    .line 1921
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    iget-object v2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->asyncHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/ss/android/vesdk/VEEditor;->setCompileListener(Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;Landroid/os/Looper;)V

    .line 1922
    invoke-virtual {p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->getCompileJsonStr()Ljava/lang/String;

    move-result-object v0

    .line 1923
    new-instance v2, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;-><init>(I)V

    .line 1924
    invoke-virtual {p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->getIsAudioOnly()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_34

    move v4, v5

    goto :goto_39

    :cond_34
    invoke-virtual {p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->getFps()J

    move-result-wide v6

    long-to-int v4, v6

    :goto_39
    invoke-virtual {v2, v4}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setFps(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object v2

    .line 1925
    invoke-virtual {p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->getBps()J

    move-result-wide v6

    long-to-int v4, v6

    invoke-virtual {v2, v4}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setBps(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object v2

    .line 1926
    invoke-virtual {p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->getSupportHwEncoder()Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_55

    invoke-virtual {p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->getIsAudioOnly()Z

    move-result v4

    if-nez v4, :cond_55

    move v4, v5

    goto :goto_56

    :cond_55
    move v4, v6

    :goto_56
    invoke-virtual {v2, v4}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setSupportHwEnc(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object v2

    .line 1927
    invoke-virtual {p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->getGopSize()J

    move-result-wide v7

    long-to-int v4, v7

    invoke-virtual {v2, v4}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setGopSize(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object v2

    .line 1928
    invoke-virtual {p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->getEncodeProfile()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getEncodeProfile(Ljava/lang/String;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setEncodeProfile(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object v2

    const/4 v4, 0x4

    .line 1929
    invoke-virtual {v2, v4}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setResizeMode(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object v2

    .line 1930
    invoke-virtual {v2, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setExternalSettings(Ljava/lang/String;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object v2

    .line 1931
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "compile json str: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    invoke-virtual {p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->getSupportHwEncoder()Z

    move-result v0

    if-nez v0, :cond_97

    const/16 v0, 0xf

    .line 1933
    invoke-virtual {v2, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setSWCRF(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    .line 1935
    :cond_97
    invoke-virtual {p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->getWidth()J

    move-result-wide v0

    const-wide/16 v7, 0x0

    cmp-long v0, v0, v7

    if-eqz v0, :cond_b6

    invoke-virtual {p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->getHeight()J

    move-result-wide v0

    cmp-long v0, v0, v7

    if-eqz v0, :cond_b6

    .line 1936
    invoke-virtual {p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->getWidth()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->getHeight()J

    move-result-wide v7

    long-to-int v1, v7

    invoke-virtual {v2, v0, v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setVideoRes(II)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    .line 1939
    :cond_b6
    new-instance v12, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$9;

    move-object/from16 v0, p3

    invoke-direct {v12, p0, v0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$9;-><init>(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;Lcom/bytedance/ies/cutsame/veadapter/CompileListener;)V

    .line 1966
    invoke-virtual {p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->getAudioFilePath()Ljava/lang/String;

    move-result-object v0

    .line 1967
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_cd

    move-object v9, v3

    goto :goto_ce

    :cond_cd
    move-object v9, v0

    .line 1973
    :goto_ce
    invoke-virtual {p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->getIsAudioOnly()Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 1974
    new-instance v0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;-><init>()V

    const/16 v1, 0x3e80

    .line 1975
    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->setSampleRate(I)Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;

    move-result-object v0

    .line 1976
    invoke-virtual {v0, v5}, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->setChannelCount(I)Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;

    move-result-object v0

    sget-object v1, Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;->ENCODE_STANDARD_AAC:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;

    .line 1977
    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->setCodec(Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;)Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;

    move-result-object v0

    .line 1978
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->Build()Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    move-result-object v11

    .line 1979
    iget-object v7, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->build()Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    move-result-object v10

    move-object v8, p1

    invoke-virtual/range {v7 .. v12}, Lcom/ss/android/vesdk/VEEditor;->compile(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;)Z

    move-result p1

    goto :goto_103

    .line 1981
    :cond_f9
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->build()Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    move-result-object v1

    invoke-virtual {v0, p1, v9, v1, v12}, Lcom/ss/android/vesdk/VEEditor;->compile(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;)Z

    move-result p1

    :goto_103
    if-nez p1, :cond_110

    .line 1983
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->asyncHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lcom/ss/android/vesdk/VEEditor;->setCompileListener(Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;Landroid/os/Looper;)V

    :cond_110
    if-eqz p1, :cond_113

    return v6

    :cond_113
    const/4 p0, -0x1

    return p0
.end method

.method public copyVideo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[I[I)I
    .registers 10

    .line 2381
    const-string v0, "copyVideo: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2382
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 2384
    :cond_10
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result v0

    const/16 v2, -0x2b03

    if-ne v0, v2, :cond_31

    .line 2386
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "copyVideo: segment not found "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0

    .line 2390
    :cond_31
    new-instance v2, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;

    invoke-direct {v2}, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;-><init>()V

    const/4 v3, 0x0

    .line 2391
    aget-object p3, p3, v3

    iput-object p3, v2, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;->clipFilePath:Ljava/lang/String;

    const/4 p3, 0x2

    .line 2392
    iput p3, v2, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;->sourceType:I

    .line 2394
    new-instance p3, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;

    invoke-direct {p3}, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;-><init>()V

    .line 2395
    aget p4, p4, v3

    iput p4, p3, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimIn:I

    .line 2396
    aget p4, p5, v3

    iput p4, p3, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimOut:I

    .line 2397
    iget-object p4, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p4, v3, v0, v2, p3}, Lcom/ss/android/vesdk/VEEditor;->insertClip(IILcom/ss/android/vesdk/clipparam/VEClipSourceParam;Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I

    move-result p3

    if-gez p3, :cond_68

    .line 2400
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "copyVideo, error, ret "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p3

    .line 2404
    :cond_68
    iget-object p4, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {p4, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->removeSegment(Ljava/lang/String;)V

    .line 2405
    iget-object p4, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {p4, p1, v0}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->addMainSegmentClipIndex(Ljava/lang/String;I)V

    .line 2406
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->addMainSegmentClipIndex(Ljava/lang/String;I)V

    return p3
.end method

.method public cropVideo(Ljava/lang/String;[F)I
    .registers 8

    .line 896
    const-string v0, "cropVideo: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 899
    :cond_10
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    .line 900
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v2, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result v2

    const/16 v3, -0x2b03

    if-eq v0, v3, :cond_3d

    if-ne v2, v3, :cond_23

    goto :goto_3d

    .line 906
    :cond_23
    new-instance v1, Lcom/ss/android/vesdk/filterparam/VEVideoCropFilterParam;

    invoke-direct {v1, p2}, Lcom/ss/android/vesdk/filterparam/VEVideoCropFilterParam;-><init>([F)V

    .line 907
    new-instance p2, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;

    const-string v3, "crop filter"

    sget-object v4, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->NONE:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    invoke-direct {p2, p1, v3, v4}, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;)V

    .line 908
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 v3, 0x0

    .line 909
    invoke-direct {p0, v3, v0, p2, v1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFilterIndex(IILcom/bytedance/ies/cutsame/veadapter/FilterArgs;Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    .line 908
    invoke-virtual {p1, v2, p0, v1}, Lcom/ss/android/vesdk/VEEditor;->updateTrackClipFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    return p0

    .line 902
    :cond_3d
    :goto_3d
    const-string p0, "cropVideo: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0
.end method

.method public deleteAmazingFilter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 13

    .line 1730
    const-string v0, "deleteGlobalAdjust: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 1733
    :cond_10
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    const/16 v2, -0x2b03

    if-ne v0, v2, :cond_31

    .line 1735
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "deleteGlobalAdjust: segment id not found "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0

    .line 1739
    :cond_31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1740
    array-length v2, p3

    const/4 v3, 0x0

    move v4, v3

    :goto_39
    if-ge v4, v2, :cond_81

    aget-object v5, p3, v4

    .line 1741
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5, v0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFilterIndexMapKey(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 1742
    iget-object v6, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mFilterIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1743
    :cond_5f
    :goto_5f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7e

    .line 1744
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1745
    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5f

    .line 1746
    iget-object v8, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mFilterIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1747
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_5f

    :cond_7e
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 1751
    :cond_81
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8d

    .line 1752
    const-string p0, "deleteGlobalAdjust: remove ids"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 1756
    :cond_8d
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [I

    .line 1757
    :goto_93
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v3, p3, :cond_a8

    .line 1758
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    aput p3, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_93

    .line 1760
    :cond_a8
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p2}, Lcom/ss/android/vesdk/VEEditor;->deleteFilters([I)I

    move-result p0

    return p0
.end method

.method public deleteAmazingFilter([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 13

    .line 1695
    const-string v0, "deleteAmazingFilter: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 1698
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1699
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_18
    if-ge v4, v2, :cond_70

    aget-object v5, p1, v4

    .line 1700
    iget-object v6, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v6, v5}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v5

    const/16 v6, -0x2b03

    if-ne v5, v6, :cond_2c

    .line 1702
    const-string v5, "deleteAmazingFilter: index error"

    invoke-static {v1, v5}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6d

    .line 1706
    :cond_2c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v6, v5}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFilterIndexMapKey(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 1707
    iget-object v6, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mFilterIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1708
    :cond_4e
    :goto_4e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 1709
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1710
    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 1711
    iget-object v8, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mFilterIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1712
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_4e

    :cond_6d
    :goto_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 1717
    :cond_70
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 1718
    const-string p0, "deleteAmazingFilter: not removeIds"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 1722
    :cond_7c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [I

    .line 1723
    :goto_82
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v3, p2, :cond_97

    .line 1724
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_82

    .line 1726
    :cond_97
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEditor;->deleteFilters([I)I

    move-result p0

    return p0
.end method

.method public deleteAudioTrack(Ljava/lang/String;)I
    .registers 5

    .line 2187
    const-string v0, "deleteAudioTrack: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 2190
    :cond_10
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    const/16 v2, -0x2b03

    if-ne v0, v2, :cond_31

    .line 2192
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "deleteAudioTrack: index null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0

    .line 2196
    :cond_31
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v1, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->removeSegment(Ljava/lang/String;)V

    .line 2198
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/vesdk/VEEditor;->deleteAudioTrack(IZ)I

    move-result p1

    .line 2199
    invoke-direct {p0, v1, v0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->removeFilterIndex(II)V

    return p1
.end method

.method public deleteEffect([Ljava/lang/String;)I
    .registers 7

    .line 2218
    const-string v0, "deleteEffect: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 2221
    :cond_10
    array-length v0, p1

    const/4 v2, 0x0

    if-gtz v0, :cond_1a

    .line 2222
    const-string p0, "deleteEffect: segment id null"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 2226
    :cond_1a
    array-length v0, p1

    new-array v0, v0, [I

    .line 2227
    :goto_1d
    array-length v3, p1

    if-ge v2, v3, :cond_4f

    .line 2228
    iget-object v3, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v3

    const/16 v4, -0x2b03

    if-ne v3, v4, :cond_43

    .line 2230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteEffect: segment not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 2232
    :cond_43
    aput v3, v0, v2

    .line 2233
    iget-object v3, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->removeSegment(Ljava/lang/String;)V

    :goto_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 2236
    :cond_4f
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEEditor;->deleteFilters([I)I

    move-result p0

    return p0
.end method

.method public deleteInfoSticker(Ljava/lang/String;)I
    .registers 5

    .line 2084
    const-string v0, "deleteInfoSticker: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 2087
    :cond_10
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    const/16 v2, -0x2b03

    if-ne v0, v2, :cond_22

    .line 2089
    const-string p0, "getInfoStickerPosition: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0

    .line 2093
    :cond_22
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v1, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->removeSegment(Ljava/lang/String;)V

    .line 2094
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEEditor;->removeInfoSticker(I)I

    move-result p0

    return p0
.end method

.method public destroy()V
    .registers 3

    .line 2111
    const-string v0, "cut.VEEditorAdapter"

    const-string v1, "destroy: "

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVEInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2113
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->asyncHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 2114
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEEditor;->setMessageHandlerLooper(Landroid/os/Looper;)V

    .line 2115
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0, v1, v1}, Lcom/ss/android/vesdk/VEEditor;->setCompileListener(Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;Landroid/os/Looper;)V

    .line 2116
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->editorProxy:Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;

    new-instance v1, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$10;

    invoke-direct {v1, p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$10;-><init>(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;->destroy(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public dp2px(F)I
    .registers 3

    .line 2106
    const-string p0, "cut.VEEditorAdapter"

    const-string v0, "dp2px: "

    invoke-static {p0, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2107
    sget-object p0, Lcom/bytedance/ies/cutsame/util/SizeUtil;->INSTANCE:Lcom/bytedance/ies/cutsame/util/SizeUtil;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/util/SizeUtil;->dp2px(F)I

    move-result p0

    return p0
.end method

.method public enableStickerAnimationPreview(Ljava/lang/String;Z)I
    .registers 6

    .line 2706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableStickerAnimationPreview: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2707
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    const/16 v2, -0x2b03

    if-ne v0, v2, :cond_3f

    .line 2709
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enableStickerAnimationPreview: seg id not found "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0

    .line 2713
    :cond_3f
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, v0, p2}, Lcom/ss/android/vesdk/VEEditor;->enableStickerAnimationPreview(IZ)I

    move-result p0

    return p0
.end method

.method public filterIndexOfSegment(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5

    .line 973
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result p1

    const/16 v0, -0x2b03

    if-ne p1, v0, :cond_14

    .line 975
    const-string p0, "cut.VEEditorAdapter"

    const-string p1, "hasUpdateFilterType: index error"

    invoke-static {p0, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0

    .line 978
    :cond_14
    invoke-direct {p0, p3, p2, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFilterIndexMapKey(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 979
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mFilterIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_24

    const/4 p0, -0x1

    return p0

    .line 980
    :cond_24
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public flushSeekCmd()I
    .registers 3

    .line 2682
    const-string v0, "cut.VEEditorAdapter"

    const-string v1, "flushSeekCmd: "

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2683
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->flushSeekCmd()I

    move-result p0

    return p0
.end method

.method public forceRefreshCurrentFrame()I
    .registers 3

    .line 2135
    const-string v0, "cut.VEEditorAdapter"

    const-string v1, "forceRefreshCurrentFrame"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    sget-object v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_REFRESH_MODE_FOECE:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->getValue()I

    move-result v0

    .line 2137
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEEditor;->refreshCurrentFrameWithMode(I)I

    move-result p0

    return p0
.end method

.method public getAllVideoFileInfos()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/clipparam/VEClipVideoFileInfoParam;",
            ">;"
        }
    .end annotation

    .line 2855
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->getAllVideoFileInfos()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCanvasSize()Lcom/bytedance/ies/cutsame/util/Size;
    .registers 3

    .line 2243
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->getVideoResolution()Lcom/ss/android/vesdk/VESize;

    move-result-object p0

    .line 2244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCanvasSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2245
    new-instance v0, Lcom/bytedance/ies/cutsame/util/Size;

    iget v1, p0, Lcom/ss/android/vesdk/VESize;->width:I

    iget p0, p0, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-direct {v0, v1, p0}, Lcom/bytedance/ies/cutsame/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getConfigCanvasSize()Lcom/bytedance/ies/cutsame/util/Size;
    .registers 3

    .line 2252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfigCanvasSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->configCanvasSize:Lcom/bytedance/ies/cutsame/util/Size;

    iget v1, v1, Lcom/bytedance/ies/cutsame/util/Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->configCanvasSize:Lcom/bytedance/ies/cutsame/util/Size;

    iget v1, v1, Lcom/bytedance/ies/cutsame/util/Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->configCanvasSize:Lcom/bytedance/ies/cutsame/util/Size;

    iget v1, v0, Lcom/bytedance/ies/cutsame/util/Size;->width:I

    if-eqz v1, :cond_32

    iget v1, v0, Lcom/bytedance/ies/cutsame/util/Size;->height:I

    if-nez v1, :cond_31

    goto :goto_32

    :cond_31
    return-object v0

    :cond_32
    :goto_32
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getCanvasSize()Lcom/bytedance/ies/cutsame/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getCurPosition()I
    .registers 2

    .line 599
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, -0x17

    return p0

    .line 601
    :cond_9
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->getCurPosition()I

    move-result p0

    return p0
.end method

.method public getCurrDecodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6

    .line 2613
    const-string v0, "getCurrDecodeImage: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2614
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    return-object v2

    .line 2616
    :cond_f
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    .line 2617
    iget-object v3, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v3, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result p1

    const/16 v3, -0x2b03

    if-eq v0, v3, :cond_29

    if-ne p1, v3, :cond_22

    goto :goto_29

    .line 2623
    :cond_22
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/vesdk/VEEditor;->getCurrDecodeImage(II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 2619
    :cond_29
    :goto_29
    const-string p0, "getCurrDecodeImage: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public getCurrDisplayImage()Landroid/graphics/Bitmap;
    .registers 1

    .line 2872
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->getCurrDisplayImage()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getCurrDisplayImage(I)Landroid/graphics/Bitmap;
    .registers 2

    .line 2876
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEditor;->getCurrDisplayImage(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getDuration()I
    .registers 2

    .line 605
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, -0x17

    return p0

    .line 607
    :cond_9
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->getDuration()I

    move-result p0

    return p0
.end method

.method public getFileClipInfo(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 2744
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_b

    const/4 p1, 0x0

    goto :goto_11

    .line 2745
    :cond_b
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v1, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result p1

    :goto_11
    const/16 v1, -0x2b03

    if-eq v0, v1, :cond_1f

    if-ne p1, v1, :cond_18

    goto :goto_1f

    .line 2751
    :cond_18
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/ss/android/vesdk/VEEditor;->getClipFileInfoStringWithPath(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2747
    :cond_1f
    :goto_1f
    const-string p0, "cut.VEEditorAdapter"

    const-string p1, "getFileClipInfo: index error"

    invoke-static {p0, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2748
    const-string p0, ""

    return-object p0
.end method

.method public getImages([IIILcom/ss/android/vesdk/VEEditor$GET_FRAMES_FLAGS;Lcom/ss/android/vesdk/VEListener$VEGetImageListener;)I
    .registers 12

    .line 1831
    const-string v0, "cut.VEEditorAdapter"

    const-string v1, "getImages: "

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 1834
    :cond_10
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/vesdk/VEEditor;->getImages([IIILcom/ss/android/vesdk/VEEditor$GET_FRAMES_FLAGS;Lcom/ss/android/vesdk/VEListener$VEGetImageListener;)I

    move-result p0

    return p0
.end method

.method public getInfoStickerBoundingBox(Ljava/lang/String;Landroid/graphics/RectF;)Z
    .registers 9

    .line 2013
    const-string v0, "getInfoStickerBoundingBox: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    return v2

    .line 2016
    :cond_f
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    const/16 v3, -0x2b03

    if-ne v0, v3, :cond_2e

    .line 2018
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getInfoStickerBoundingBox segmentId not found "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 2023
    :cond_2e
    :try_start_2e
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEEditor;->getInfoStickerBoundingBoxWithoutRotate(I)[F

    move-result-object p0

    if-eqz p0, :cond_79

    .line 2024
    array-length p1, p0

    if-gtz p1, :cond_3a

    goto :goto_79

    .line 2025
    :cond_3a
    array-length p1, p0

    move v3, v2

    :goto_3c
    if-ge v3, p1, :cond_58

    aget v4, p0, v3

    .line 2026
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_52

    invoke-static {v4}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-eqz v4, :cond_4d

    goto :goto_52

    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    :catchall_50
    move-exception p0

    goto :goto_7a

    .line 2027
    :cond_52
    :goto_52
    const-string p0, "getInfoStickerBoundingBox: result float error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 2033
    :cond_58
    aget p1, p0, v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr p1, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr p1, v4

    iput p1, p2, Landroid/graphics/RectF;->left:F

    const/4 p1, 0x1

    .line 2034
    aget v5, p0, p1

    sub-float v5, v3, v5

    div-float/2addr v5, v4

    iput v5, p2, Landroid/graphics/RectF;->bottom:F

    const/4 v5, 0x2

    .line 2035
    aget v5, p0, v5

    add-float/2addr v5, v3

    div-float/2addr v5, v4

    iput v5, p2, Landroid/graphics/RectF;->right:F

    const/4 v5, 0x3

    .line 2036
    aget p0, p0, v5

    sub-float/2addr v3, p0

    div-float/2addr v3, v4

    iput v3, p2, Landroid/graphics/RectF;->top:F
    :try_end_78
    .catchall {:try_start_2e .. :try_end_78} :catchall_50

    return p1

    :cond_79
    :goto_79
    return v2

    .line 2039
    :goto_7a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getInfoStickerBoundingBox index:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "cause error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public getInfoStickerPosition(Ljava/lang/String;[F)Z
    .registers 7

    .line 2045
    const-string v0, "cut.VEEditorAdapter"

    const-string v1, "getInfoStickerPosition: "

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2046
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_f

    return v3

    .line 2048
    :cond_f
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v2, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result p1

    const/16 v2, -0x2b03

    if-ge p1, v2, :cond_1f

    .line 2050
    const-string p0, "getInfoStickerPosition: index error"

    invoke-static {v0, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 2055
    :cond_1f
    :try_start_1f
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VEEditor;->getInfoStickerPosition(I[F)I

    move-result p0
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_2a

    if-nez p0, :cond_29

    const/4 p0, 0x1

    return p0

    :cond_29
    return v3

    :catchall_2a
    move-exception p0

    .line 2058
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cause error: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public getInfoStickerSize(Ljava/lang/String;)[F
    .registers 7

    .line 1988
    const-string v0, "getInfoStickerSize: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_14

    new-array p0, v2, [F

    fill-array-data p0, :array_70

    return-object p0

    .line 1991
    :cond_14
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result p1

    const/16 v0, -0x2b03

    if-ne p1, v0, :cond_29

    .line 1993
    const-string p0, "getInfoStickerSize: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1994
    new-array p0, v2, [F

    fill-array-data p0, :array_78

    return-object p0

    .line 1998
    :cond_29
    :try_start_29
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEditor;->getInfoStickerBoundingBoxWithoutRotate(I)[F

    move-result-object p0

    if-eqz p0, :cond_4f

    .line 1999
    array-length p1, p0

    const/4 v0, 0x4

    if-ge p1, v0, :cond_36

    goto :goto_4f

    .line 2000
    :cond_36
    aget p1, p0, v2

    const/4 v0, 0x0

    aget v3, p0, v0

    sub-float/2addr p1, v3

    aput p1, p0, v0

    const/4 p1, 0x3

    .line 2001
    aget v0, p0, p1

    const/4 v3, 0x1

    aget v4, p0, v3

    sub-float/2addr v0, v4

    aput v0, p0, v3

    const/4 v0, 0x0

    .line 2002
    aput v0, p0, v2

    .line 2003
    aput v0, p0, p1

    return-object p0

    :catch_4d
    move-exception p0

    goto :goto_55

    .line 1999
    :cond_4f
    :goto_4f
    new-array p0, v2, [F

    fill-array-data p0, :array_80
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_54} :catch_4d

    return-object p0

    .line 2006
    :goto_55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getInfoStickerSize error "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    new-array p0, v2, [F

    fill-array-data p0, :array_88

    return-object p0

    nop

    :array_70
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_78
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_80
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_88
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getInfoStickerTemplateParams(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1572
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 1573
    :cond_8
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result p1

    const/16 v0, -0x2b03

    if-ne p1, v0, :cond_1a

    .line 1575
    const-string p0, "cut.VEEditorAdapter"

    const-string p1, "getInfoStickerTemplateParams: index error"

    invoke-static {p0, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 1578
    :cond_1a
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEditor;->getInfoStickerTemplateParams(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInitSize()Lcom/bytedance/ies/cutsame/util/Size;
    .registers 3

    .line 2591
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->getInitSize()Lcom/ss/android/vesdk/VESize;

    move-result-object p0

    .line 2592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getInitSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2593
    new-instance v0, Lcom/bytedance/ies/cutsame/util/Size;

    iget v1, p0, Lcom/ss/android/vesdk/VESize;->width:I

    iget p0, p0, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-direct {v0, v1, p0}, Lcom/bytedance/ies/cutsame/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getReDrawBmp()Landroid/graphics/Bitmap;
    .registers 1

    .line 2864
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->getReDrawBmp()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getSegmentKeyframe(Ljava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;I)Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;
    .registers 4

    .line 349
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->keyframeProxy:Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->getSegmentKeyframe(Ljava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;I)Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;

    move-result-object p0

    return-object p0
.end method

.method public getSingleTrackProcessedImageForChroma(IILjava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v0, 0x0

    .line 676
    const-string v1, "reshape"

    invoke-direct {p0, v0, v1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setVideoFiltersEnable(ZLjava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p3}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result p3

    .line 678
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/vesdk/VEEditor;->getSingleTrackProcessedImage(III)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p2, 0x1

    .line 679
    invoke-direct {p0, p2, v1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setVideoFiltersEnable(ZLjava/lang/String;)V

    return-object p1
.end method

.method public getSpecificImage(IIILkotlin/jvm/functions/Function1;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    .line 2563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSpecificImage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2564
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_2b

    return-void

    .line 2566
    :cond_2b
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->editorProxy:Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;->getSpecificImage(IIILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public getState()I
    .registers 2

    .line 613
    sget-object v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$14;->$SwitchMap$com$ss$android$vesdk$VEEditor$VEState:[I

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->getState()Lcom/ss/android/vesdk/VEEditor$VEState;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_1e

    const/4 p0, 0x0

    return p0

    :pswitch_13
    const/4 p0, 0x5

    return p0

    :pswitch_15
    const/4 p0, 0x4

    return p0

    :pswitch_17
    const/4 p0, 0x3

    return p0

    :pswitch_19
    const/4 p0, 0x2

    return p0

    :pswitch_1b
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_1e
    .packed-switch 0x3
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_19
        :pswitch_17
        :pswitch_15
        :pswitch_15
        :pswitch_13
    .end packed-switch
.end method

.method public getStringFromVE()Ljava/lang/String;
    .registers 1

    .line 530
    const-string p0, "This is a String from VE SDK"

    return-object p0
.end method

.method public initAuthInternal([B)I
    .registers 3

    .line 336
    sget-boolean v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->needAuth:Z

    if-eqz v0, :cond_21

    .line 337
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEditor;->initAuthInternal([B)I

    move-result p0

    .line 338
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initAuthInternal: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cut.VEEditorAdapter"

    invoke-static {v0, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_21
    const/4 p0, -0x1

    return p0
.end method

.method public invalidate()V
    .registers 3

    .line 2098
    const-string v0, "cut.VEEditorAdapter"

    const-string v1, "invalidate: "

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->getCurPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->seekDone(IZ)I

    return-void
.end method

.method public layoutInfoSticker(Ljava/lang/String;FFFFI)I
    .registers 9

    .line 2495
    const-string v0, "layoutInfoSticker: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2496
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 2498
    :cond_10
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result p1

    const/16 v0, -0x2b03

    if-ne p1, v0, :cond_22

    .line 2500
    const-string p0, "layoutInfoSticker: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0

    :cond_22
    if-lez p6, :cond_29

    .line 2505
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0, p1, p6}, Lcom/ss/android/vesdk/VEEditor;->setInfoStickerLayer(II)I

    .line 2507
    :cond_29
    iget-object p6, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p6, p1, p2, p3}, Lcom/ss/android/vesdk/VEEditor;->setInfoStickerPosition(IFF)I

    .line 2508
    iget-object p2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    neg-float p3, p5

    invoke-virtual {p2, p1, p3}, Lcom/ss/android/vesdk/VEEditor;->setInfoStickerRotation(IF)I

    .line 2509
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p1, p4}, Lcom/ss/android/vesdk/VEEditor;->setInfoStickerScale(IF)I

    const/4 p0, 0x0

    return p0
.end method

.method public lockIndex(Ljava/lang/String;)I
    .registers 5

    .line 2687
    const-string v0, "lockIndex: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2688
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 2690
    :cond_10
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result v0

    const/16 v2, -0x2b03

    if-ne v0, v2, :cond_31

    .line 2692
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "lockIndex: seg id not found "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0

    .line 2696
    :cond_31
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEEditor;->lockSeekVideoClip(I)I

    move-result p0

    return p0
.end method

.method public moveSubVideo(Ljava/lang/String;I)I
    .registers 5

    .line 1046
    const-string v0, "moveSubVideo: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 1049
    :cond_10
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result p1

    const/16 v0, -0x2b03

    if-ne p1, v0, :cond_22

    .line 1051
    const-string p0, "moveSubVideo: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0

    .line 1055
    :cond_22
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VEEditor;->setExtVideoTrackSeqIn(II)I

    move-result p0

    return p0
.end method

.method public native onCommonCallback(JIIFLjava/lang/String;)V
.end method

.method public onGoingSeek(I)I
    .registers 3

    .line 2627
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, -0x17

    return p0

    .line 2629
    :cond_9
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    sget-object v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_OnGoing:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/vesdk/VEEditor;->seek(ILcom/ss/android/vesdk/VEEditor$SEEK_MODE;)I

    move-result p0

    return p0
.end method

.method public onGoingSeek(IFF)I
    .registers 5

    .line 2633
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, -0x17

    return p0

    .line 2635
    :cond_9
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    sget-object v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_OnGoing:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/ss/android/vesdk/VEEditor;->seekWithSpeed(ILcom/ss/android/vesdk/VEEditor$SEEK_MODE;FF)I

    move-result p0

    return p0
.end method

.method public onSurfaceChanged(II)V
    .registers 5

    .line 2734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2735
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VEEditor;->onSurfaceChanged(II)V

    return-void
.end method

.method public onSurfaceCreated(Landroid/view/Surface;)V
    .registers 4

    .line 2729
    const-string v0, "cut.VEEditorAdapter"

    const-string v1, "onSurfaceCreated: "

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2730
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEditor;->onSurfaceCreated(Landroid/view/Surface;)V

    return-void
.end method

.method public onSurfaceDestroyed()V
    .registers 3

    .line 2739
    const-string v0, "cut.VEEditorAdapter"

    const-string v1, "onSurfaceDestroyed: "

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2740
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->onSurfaceDestroyed()V

    return-void
.end method

.method public pause()V
    .registers 5

    .line 573
    const-string v0, "cut.VEEditorAdapter"

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 577
    :cond_e
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->pause()I

    move-result v0

    .line 578
    const-string v1, "cut.VEEditorAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pause result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->statusListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 580
    :try_start_2d
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mTemplatePlayerStatusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

    if-eqz v1, :cond_39

    .line 581
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mTemplatePlayerStatusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;->onPause()V

    goto :goto_39

    :catchall_37
    move-exception p0

    goto :goto_3b

    .line 583
    :cond_39
    :goto_39
    monitor-exit v0

    return-void

    :goto_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_37

    throw p0
.end method

.method public play()V
    .registers 3

    .line 559
    const-string v0, "cut.VEEditorAdapter"

    const-string v1, "play"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 563
    :cond_e
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->stopStickerAnimationPreview()I

    .line 564
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->play()I

    .line 565
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->statusListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 566
    :try_start_19
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mTemplatePlayerStatusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

    if-eqz v1, :cond_25

    .line 567
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mTemplatePlayerStatusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;->onPlay()V

    goto :goto_25

    :catchall_23
    move-exception p0

    goto :goto_27

    .line 569
    :cond_25
    :goto_25
    monitor-exit v0

    return-void

    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_23

    throw p0
.end method

.method public prepare()I
    .registers 3

    .line 2755
    const-string v0, "cut.VEEditorAdapter"

    const-string v1, "prepare"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2756
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 2758
    :cond_10
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->prepare()I

    move-result p0

    return p0
.end method

.method public refreshCurrentFrame()I
    .registers 3

    .line 2130
    const-string v0, "cut.VEEditorAdapter"

    const-string v1, "refreshCurrentFrame"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->refreshCurrentFrame()I

    move-result p0

    return p0
.end method

.method public refreshWithCallback(Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;)I
    .registers 4

    .line 2724
    const-string v0, "cut.VEEditorAdapter"

    const-string v1, "refreshWithCallback: "

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2725
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEditor;->refreshWithCallback(Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;)I

    move-result p0

    return p0
.end method

.method public removeChromaFilter(Ljava/lang/String;)V
    .registers 4

    .line 2836
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    .line 2837
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v1, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result p1

    const/16 v1, -0x2b03

    if-eq v0, v1, :cond_53

    if-ne p1, v1, :cond_13

    goto :goto_53

    .line 2842
    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video_filter_key"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&chroma"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2843
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mFilterIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 2845
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mFilterIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object p1

    .line 2846
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0, p1}, Lcom/ss/android/vesdk/VEEditor;->deleteFilters([I)I

    .line 2847
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mFilterIndexSegmentMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52
    return-void

    .line 2839
    :cond_53
    :goto_53
    const-string p0, "cut.VEEditorAdapter"

    const-string p1, "chroma: index error"

    invoke-static {p0, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeKeyframe(Ljava/lang/String;IILjava/lang/String;)I
    .registers 13

    .line 1612
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, -0x17

    return p0

    .line 1614
    :cond_9
    const-string v0, "audio volume filter"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    :goto_12
    move v7, v0

    goto :goto_16

    :cond_14
    const/4 v0, -0x1

    goto :goto_12

    .line 1617
    :goto_16
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->keyframeProxy:Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;

    int-to-long v3, p2

    move-object v2, p1

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->removeKeyframe(Ljava/lang/String;JILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public removeKeyframe(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I
    .registers 14

    .line 1626
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, -0x17

    return p0

    .line 1627
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "&"

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1628
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->keyframeProxy:Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;

    int-to-long v3, p3

    const/4 v7, -0x1

    move-object v2, p1

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->removeKeyframe(Ljava/lang/String;JILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public removeKeyframeListener(Lcom/bytedance/ies/cutsame/veadapter/KeyframeListener;)Ljava/lang/Boolean;
    .registers 2

    .line 372
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->keyframeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public removeSubVideo(Ljava/lang/String;)I
    .registers 5

    .line 1017
    const-string v0, "removeSubVideo: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 1020
    :cond_10
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    const/16 v2, -0x2b03

    if-ne v0, v2, :cond_22

    .line 1022
    const-string p0, "removeSubVideo: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0

    .line 1026
    :cond_22
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v1, v0}, Lcom/ss/android/vesdk/VEEditor;->deleteExternalVideoTrack(I)I

    move-result v1

    const/4 v2, 0x0

    .line 1027
    invoke-direct {p0, v2, v0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->removeFilterIndex(II)V

    .line 1028
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->removeSegment(Ljava/lang/String;)V

    return v1
.end method

.method public removeVideo(Ljava/lang/String;)I
    .registers 5

    .line 2411
    const-string v0, "removeVideo: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2412
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 2414
    :cond_10
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result v0

    const/16 v2, -0x2b03

    if-ne v0, v2, :cond_31

    .line 2416
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeVideo: seg id not found "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0

    .line 2420
    :cond_31
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v1, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->removeSegment(Ljava/lang/String;)V

    .line 2421
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/vesdk/VEEditor;->deleteClip(II)I

    move-result p0

    return p0
.end method

.method public removeVideoKeyframe(Ljava/lang/String;I)I
    .registers 5

    .line 1632
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, -0x17

    return p0

    .line 1633
    :cond_9
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->keyframeProxy:Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->removeVideoKeyframe(Ljava/lang/String;J)I

    move-result p0

    return p0
.end method

.method public replaceVideoIndex(Ljava/lang/String;Ljava/lang/String;IIF)I
    .registers 9

    .line 2271
    const-string v0, "replaceVideoIndex: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2272
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 2274
    :cond_10
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    .line 2275
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v2, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result p1

    const/16 v2, -0x2b03

    if-eq v0, v2, :cond_55

    if-ne p1, v2, :cond_23

    goto :goto_55

    .line 2281
    :cond_23
    new-instance v1, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;

    invoke-direct {v1}, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;-><init>()V

    .line 2282
    iput-object p2, v1, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;->clipFilePath:Ljava/lang/String;

    const/4 p2, 0x0

    .line 2283
    iput p2, v1, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;->sourceType:I

    .line 2285
    new-instance v2, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;

    invoke-direct {v2}, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;-><init>()V

    .line 2286
    iput p3, v2, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimIn:I

    .line 2287
    iput p4, v2, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimOut:I

    float-to-double p3, p5

    .line 2288
    iput-wide p3, v2, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->speed:D

    .line 2290
    iget-object p3, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    filled-new-array {p1}, [I

    move-result-object p4

    filled-new-array {v1}, [Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;

    move-result-object p5

    invoke-virtual {p3, p2, v0, p4, p5}, Lcom/ss/android/vesdk/VEEditor;->updateClipSourceParam(II[I[Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;)I

    .line 2291
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    filled-new-array {p1}, [I

    move-result-object p1

    filled-new-array {v2}, [Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;

    move-result-object p3

    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/ss/android/vesdk/VEEditor;->updateClipsTimelineParam(II[I[Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I

    move-result p0

    return p0

    .line 2277
    :cond_55
    :goto_55
    const-string p0, "replaceVideoIndex: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0
.end method

.method public seek(J)V
    .registers 5

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seek : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_1d

    return-void

    .line 639
    :cond_1d
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    long-to-int p1, p1

    sget-object p2, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_Forward:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VEEditor;->seek(ILcom/ss/android/vesdk/VEEditor$SEEK_MODE;)I

    return-void
.end method

.method public seekDone(IZ)I
    .registers 4

    const/4 v0, 0x0

    .line 2646
    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->seekDonePlay(IZLcom/ss/android/vesdk/VEListener$VEEditorSeekListener;)I

    move-result p0

    return p0
.end method

.method public seekDone(IZLcom/ss/android/vesdk/VEListener$VEEditorSeekListener;)I
    .registers 9

    .line 2668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seekDone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " last "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "cut.VEEditorAdapter"

    invoke-static {v3, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2669
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_27

    const/16 p0, -0x17

    return p0

    .line 2672
    :cond_27
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getDuration()I

    move-result v0

    if-le p1, v0, :cond_32

    .line 2673
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getDuration()I

    move-result v0

    goto :goto_33

    :cond_32
    move v0, p1

    :goto_33
    if-eqz p2, :cond_38

    .line 2675
    sget-object v4, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LAST_Accurate_Clear:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    goto :goto_3a

    :cond_38
    sget-object v4, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LastSeek:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    .line 2676
    :goto_3a
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, v0, v4, p3}, Lcom/ss/android/vesdk/VEEditor;->seek(ILcom/ss/android/vesdk/VEEditor$SEEK_MODE;Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;)I

    move-result p0

    .line 2677
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " result "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public seekDonePlay(IZLcom/ss/android/vesdk/VEListener$VEEditorSeekListener;)I
    .registers 7

    .line 2650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seekDone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " auto "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2651
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_27

    const/16 p0, -0x17

    return p0

    .line 2652
    :cond_27
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    sget-object v1, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LastSeek:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    new-instance v2, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$12;

    invoke-direct {v2, p0, p3, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$12;-><init>(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;Z)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/ss/android/vesdk/VEEditor;->seek(ILcom/ss/android/vesdk/VEEditor$SEEK_MODE;Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;)I

    move-result p0

    return p0
.end method

.method public seekWithFlag(ILcom/ss/android/vesdk/VEEditor$SEEK_MODE;Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;)I
    .registers 6

    .line 2639
    const-string v0, "cut.VEEditorAdapter"

    const-string v1, "seekWithFlag: "

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2640
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 2642
    :cond_10
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/VEEditor;->seek(ILcom/ss/android/vesdk/VEEditor$SEEK_MODE;Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;)I

    move-result p0

    return p0
.end method

.method public seekWithResult(ILkotlin/jvm/functions/Function5;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function5;",
            ")V"
        }
    .end annotation

    .line 2570
    const-string v0, "cut.VEEditorAdapter"

    const-string v1, "getSpecificImage: "

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2571
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 2573
    :cond_e
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    new-instance v1, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$11;

    invoke-direct {v1, p0, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$11;-><init>(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;Lkotlin/jvm/functions/Function5;)V

    invoke-virtual {v0, p1, v1}, Lcom/ss/android/vesdk/VEEditor;->seekWithResult(ILcom/ss/android/vesdk/VEListener$VEGetImageListener;)I

    return-void
.end method

.method public setBackgroundColor(I)I
    .registers 4

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBackgroundColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEditor;->setBackgroundColor(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public setBeauty(Ljava/lang/String;Ljava/lang/String;FI)I
    .registers 9

    .line 1180
    const-string v0, "setBeauty: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 1183
    :cond_10
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    .line 1184
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v2, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result v2

    const/16 v3, -0x2b03

    if-eq v0, v3, :cond_70

    if-ne v2, v3, :cond_23

    goto :goto_70

    :cond_23
    const/4 v1, 0x0

    cmpl-float v3, p3, v1

    if-lez v3, :cond_2b

    const v1, 0x3eb33333    # 0.35f

    .line 1196
    :cond_2b
    new-instance v3, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;

    invoke-direct {v3}, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;-><init>()V

    .line 1197
    iput p4, v3, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->order:I

    .line 1198
    iput-object p2, v3, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->path:Ljava/lang/String;

    .line 1199
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "{\"intensity\":"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p4, 0x3f333333    # 0.7f

    mul-float/2addr p3, p4

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ", \"Internal_Whiten\":0, \"Internal_Sharpen\":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, "}"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->param:Ljava/lang/String;

    const/4 p2, 0x1

    .line 1202
    iput p2, v3, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterDurationType:I

    .line 1205
    new-instance p2, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;

    const-string p3, "beauty_filter"

    sget-object p4, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->NONE:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    invoke-direct {p2, p1, p3, p4}, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;)V

    .line 1206
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 p3, 0x0

    .line 1207
    invoke-direct {p0, p3, v0, p2, v3}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFilterIndex(IILcom/bytedance/ies/cutsame/veadapter/FilterArgs;Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    .line 1206
    invoke-virtual {p1, v2, p0, v3}, Lcom/ss/android/vesdk/VEEditor;->updateTrackClipFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    return p0

    .line 1186
    :cond_70
    :goto_70
    const-string p0, "setBeauty: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0
.end method

.method public setCanvasBackground(Ljava/lang/String;Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;)I
    .registers 8

    .line 2204
    const-string v0, "setCanvasBackground: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    .line 2206
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v2, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result v2

    const/16 v3, -0x2b03

    if-eq v0, v3, :cond_2f

    if-ne v2, v3, :cond_1a

    goto :goto_2f

    .line 2211
    :cond_1a
    new-instance v1, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;

    const-string v3, "color_canvas"

    sget-object v4, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->VIDEO:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    invoke-direct {v1, p1, v3, v4}, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;)V

    .line 2212
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 v3, 0x0

    .line 2213
    invoke-direct {p0, v3, v0, v1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFilterIndex(IILcom/bytedance/ies/cutsame/veadapter/FilterArgs;Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    .line 2212
    invoke-virtual {p1, v2, p0, p2}, Lcom/ss/android/vesdk/VEEditor;->updateTrackClipFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    return p0

    .line 2208
    :cond_2f
    :goto_2f
    const-string p0, "setCanvasBackground: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0
.end method

.method public setClipReservePitch(Ljava/lang/String;IZ)I
    .registers 7

    .line 1892
    const-string v0, "setClipReservePitch: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 1895
    :cond_10
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1b

    const/4 p1, 0x0

    goto :goto_21

    .line 1896
    :cond_1b
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v2, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result p1

    :goto_21
    const/16 v2, -0x2b03

    if-eq v0, v2, :cond_2f

    if-ne p1, v2, :cond_28

    goto :goto_2f

    .line 1902
    :cond_28
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/ss/android/vesdk/VEEditor;->setClipReservePitch(IIIZ)I

    move-result p0

    return p0

    .line 1898
    :cond_2f
    :goto_2f
    const-string p0, "setClipReservePitch: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0
.end method

.method public setDataSource(Lcom/bytedance/ies/cutsame/veadapter/VideoData;)I
    .registers 6

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->videoData:Lcom/bytedance/ies/cutsame/veadapter/VideoData;

    if-eqz p1, :cond_39

    const/4 v0, 0x0

    move v1, v0

    .line 508
    :goto_1c
    iget-object v2, p1, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->segmentIds:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_30

    .line 509
    aget-object v2, v2, v1

    .line 510
    iget-object v3, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v3, v2, v0}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->addSegment(Ljava/lang/String;I)V

    .line 511
    iget-object v3, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v3, v2, v1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->addMainSegmentClipIndex(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 513
    :cond_30
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->surfaceView:Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->initOrUpdateCanvas(Lcom/bytedance/ies/cutsame/veadapter/VideoData;Landroid/view/SurfaceView;Lcom/ss/android/vesdk/VEEditor;)I

    move-result p0

    return p0

    :cond_39
    const/4 p0, -0x3

    return p0
.end method

.method public setDisplayState(FFFII)V
    .registers 8

    .line 2438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisplayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2439
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_37

    return-void

    .line 2441
    :cond_37
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/vesdk/VEEditor;->setDisplayState(FFFII)V

    return-void
.end method

.method public setDisplayState(FFFIII)V
    .registers 9

    .line 2445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisplayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " flag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2446
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_3f

    return-void

    .line 2448
    :cond_3f
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual/range {p0 .. p6}, Lcom/ss/android/vesdk/VEEditor;->setDisplayState(FFFIII)V

    return-void
.end method

.method public setEditorUsageType(Ljava/lang/String;)I
    .registers 4

    .line 1911
    const-string v0, "cut.VEEditorAdapter"

    const-string v1, "setEditorUsageType: "

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEditor;->setEditorUsageType(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setFilter(Ljava/lang/String;Ljava/lang/String;FI)I
    .registers 9

    .line 1154
    const-string v0, "setFilter: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 1157
    :cond_10
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    .line 1158
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v2, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result v2

    const/16 v3, -0x2b03

    if-eq v0, v3, :cond_5c

    if-ne v2, v3, :cond_23

    goto :goto_5c

    .line 1164
    :cond_23
    new-instance v1, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;

    invoke-direct {v1}, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;-><init>()V

    .line 1165
    iput p4, v1, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->order:I

    .line 1166
    iput-object p2, v1, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->path:Ljava/lang/String;

    const/4 p2, 0x1

    .line 1167
    iput p2, v1, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterDurationType:I

    .line 1168
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "{\"intensity\":"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, "}"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->param:Ljava/lang/String;

    .line 1170
    new-instance p2, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;

    const-string p3, "color_filter"

    sget-object p4, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->VIDEO:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    invoke-direct {p2, p1, p3, p4}, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;)V

    .line 1171
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 p3, 0x0

    .line 1172
    invoke-direct {p0, p3, v0, p2, v1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFilterIndex(IILcom/bytedance/ies/cutsame/veadapter/FilterArgs;Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    .line 1171
    invoke-virtual {p1, v2, p0, v1}, Lcom/ss/android/vesdk/VEEditor;->updateTrackClipFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    return p0

    .line 1160
    :cond_5c
    :goto_5c
    const-string p0, "setFilter: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0
.end method

.method public setFirstFrameListener(Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerFirstFrameListener;)V
    .registers 4

    if-nez p1, :cond_9

    .line 2763
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEditor;->setFirstFrameListener(Lcom/ss/android/vesdk/VEListener$VEFirstFrameListener;)V

    return-void

    .line 2765
    :cond_9
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    new-instance v1, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$13;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$13;-><init>(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerFirstFrameListener;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEEditor;->setFirstFrameListener(Lcom/ss/android/vesdk/VEListener$VEFirstFrameListener;)V

    return-void
.end method

.method public setInfoStickerCallSync(Z)I
    .registers 4

    .line 1906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInfoStickerCallSync: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEditor;->setInfoStickerCallSync(Z)I

    move-result p0

    return p0
.end method

.method public setInfoStickerTime(Ljava/lang/String;II)I
    .registers 5

    .line 1562
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, -0x17

    return p0

    .line 1563
    :cond_9
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result p1

    const/16 v0, -0x2b03

    if-ne p1, v0, :cond_1d

    .line 1565
    const-string p0, "cut.VEEditorAdapter"

    const-string p1, "setInfoStickerTime: index error"

    invoke-static {p0, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0

    .line 1568
    :cond_1d
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/VEEditor;->setInfoStickerTime(III)I

    move-result p0

    return p0
.end method

.method public setKeyframe(Ljava/lang/String;JLjava/lang/String;)I
    .registers 7

    .line 1596
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, -0x17

    return p0

    .line 1597
    :cond_9
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->gson:Lcom/google/gson/Gson;

    const-class v1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;

    invoke-virtual {v0, p4, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;

    .line 1598
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->keyframeProxy:Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->setKeyframe(Ljava/lang/String;JLcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;)I

    move-result p0

    return p0
.end method

.method public setKeyframe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)I
    .registers 14

    .line 1606
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, -0x17

    return p0

    .line 1607
    :cond_9
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->gson:Lcom/google/gson/Gson;

    const-class v1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;

    invoke-virtual {v0, p6, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p6

    move-object v6, p6

    check-cast v6, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;

    .line 1608
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->keyframeProxy:Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-wide v3, p4

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->setKeyframe(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;)I

    move-result p0

    return p0
.end method

.method public setMessageHandlerLooper(Landroid/os/Looper;)V
    .registers 2

    .line 555
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEditor;->setMessageHandlerLooper(Landroid/os/Looper;)V

    return-void
.end method

.method public setMiniCanvasDuration(IZ)I
    .registers 5

    .line 2597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMiniCanvasDuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2598
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VEEditor;->setCanvasMinDuration(IZ)I

    move-result p0

    return p0
.end method

.method public setOnErrorListener(J)V
    .registers 5

    .line 534
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    new-instance v1, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$8;-><init>(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;J)V

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEEditor;->setOnErrorListener(Lcom/ss/android/vesdk/VECommonCallback;)V

    return-void
.end method

.method public setOnStatusListener(Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;)V
    .registers 3

    .line 543
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->statusListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 544
    :try_start_3
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mTemplatePlayerStatusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

    .line 545
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setPictureAdjust(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;I)I
    .registers 11

    .line 1373
    const-string v0, "setPictureAdjust: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 1376
    :cond_10
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    .line 1377
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v2, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result v2

    const/16 v3, -0x2b03

    if-eq v0, v3, :cond_78

    if-ne v2, v3, :cond_23

    goto :goto_78

    .line 1383
    :cond_23
    new-instance v3, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;

    invoke-direct {v3}, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;-><init>()V

    .line 1384
    iput-object p4, v3, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->path:Ljava/lang/String;

    .line 1385
    iput p5, v3, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->order:I

    .line 1386
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\"intensity\":"

    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, "}"

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v3, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->param:Ljava/lang/String;

    const/4 p3, 0x1

    .line 1387
    iput p3, v3, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterDurationType:I

    .line 1389
    new-instance p3, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;

    sget-object p5, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->VIDEO:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    invoke-direct {p3, p1, p2, p5}, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;)V

    .line 1390
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 p5, 0x0

    .line 1391
    invoke-direct {p0, p5, v0, p3, v3}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFilterIndex(IILcom/bytedance/ies/cutsame/veadapter/FilterArgs;Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    .line 1390
    invoke-virtual {p1, v2, p0, v3}, Lcom/ss/android/vesdk/VEEditor;->updateTrackClipFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    if-gez p0, :cond_77

    .line 1394
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setPictureAdjust fail, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_77
    return p0

    .line 1379
    :cond_78
    :goto_78
    const-string p0, "setPictureAdjust: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0
.end method

.method public setPictureAdjustBatch(Ljava/lang/String;[Ljava/lang/String;[F[Ljava/lang/String;[I)I
    .registers 16

    .line 1336
    const-string v0, "setPictureAdjust: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 1339
    :cond_10
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    .line 1340
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v2, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result v2

    const/16 v3, -0x2b03

    if-eq v0, v3, :cond_9e

    if-ne v2, v3, :cond_24

    goto/16 :goto_9e

    :cond_24
    if-eqz p2, :cond_96

    .line 1346
    array-length v3, p2

    if-nez v3, :cond_2a

    goto :goto_96

    :cond_2a
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 1352
    :goto_2d
    array-length v6, p2

    if-ge v4, v6, :cond_95

    .line 1353
    new-instance v6, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;

    invoke-direct {v6}, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;-><init>()V

    .line 1354
    aget-object v7, p4, v4

    iput-object v7, v6, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->path:Ljava/lang/String;

    if-eqz p5, :cond_3f

    .line 1356
    aget v7, p5, v4

    iput v7, v6, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->order:I

    .line 1358
    :cond_3f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "{\"intensity\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, p3, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->param:Ljava/lang/String;

    const/4 v7, 0x1

    .line 1359
    iput v7, v6, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterDurationType:I

    .line 1361
    new-instance v7, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;

    aget-object v8, p2, v4

    sget-object v9, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->VIDEO:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    invoke-direct {v7, p1, v8, v9}, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;)V

    .line 1362
    invoke-direct {p0, v3, v0, v7, v6}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFilterIndex(IILcom/bytedance/ies/cutsame/veadapter/FilterArgs;Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result v7

    .line 1364
    iget-object v8, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v8, v2, v7, v6}, Lcom/ss/android/vesdk/VEEditor;->updateTrackClipFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result v6

    add-int/2addr v5, v6

    if-gez v5, :cond_92

    .line 1366
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPictureAdjust fail, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, p2, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, p4, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_92
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_95
    return v5

    .line 1347
    :cond_96
    :goto_96
    const-string p0, "setPictureAdjust types is empty"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0

    .line 1342
    :cond_9e
    :goto_9e
    const-string p0, "setPictureAdjust: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0
.end method

.method public setPreviewSurfaceBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 2779
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEditor;->setPreviewSurfaceBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setReDrawBmp(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 2868
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEditor;->setReDrawBmp(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setReshape(Ljava/lang/String;Ljava/lang/String;FFI)I
    .registers 10

    .line 1239
    const-string v0, "setReshape: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 1242
    :cond_10
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    .line 1243
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v2, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result v2

    const/16 v3, -0x2b03

    if-eq v0, v3, :cond_7c

    if-ne v2, v3, :cond_23

    goto :goto_7c

    .line 1248
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"intensity\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", \"eyeIntensity\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr p3, v1

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ", \"cheekIntensity\":"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, "}"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1251
    new-instance p4, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;

    invoke-direct {p4}, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;-><init>()V

    .line 1252
    iput p5, p4, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->order:I

    .line 1253
    iput-object p2, p4, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->path:Ljava/lang/String;

    .line 1254
    iput-object p3, p4, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->param:Ljava/lang/String;

    const/4 p2, 0x1

    .line 1256
    iput p2, p4, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterDurationType:I

    .line 1259
    new-instance p2, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;

    const-string p3, "reshape"

    sget-object p5, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->NONE:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    invoke-direct {p2, p1, p3, p5}, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;)V

    .line 1260
    iget-object p3, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    iget-object p5, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {p5, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result p5

    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    .line 1261
    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p4}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFilterIndex(IILcom/bytedance/ies/cutsame/veadapter/FilterArgs;Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    .line 1260
    invoke-virtual {p3, p5, p0, p4}, Lcom/ss/android/vesdk/VEEditor;->updateTrackClipFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    return p0

    .line 1245
    :cond_7c
    :goto_7c
    const-string p0, "setReshape: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0
.end method

.method public setSeekCommandFlushedListener(Lcom/bytedance/ies/cutsame/veadapter/ISeekCommandFlushedListener;)V
    .registers 2

    .line 2775
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->seekCommandFlushedListener:Lcom/bytedance/ies/cutsame/veadapter/ISeekCommandFlushedListener;

    return-void
.end method

.method public setStable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 10

    .line 1218
    const-string v0, "setStable: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 1221
    :cond_10
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    .line 1222
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v2, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result v2

    const/16 v3, -0x2b03

    if-eq v0, v3, :cond_45

    if-ne v2, v3, :cond_23

    goto :goto_45

    .line 1227
    :cond_23
    new-instance v1, Lcom/ss/android/vesdk/filterparam/VEVideoStableFilterParam;

    invoke-direct {v1}, Lcom/ss/android/vesdk/filterparam/VEVideoStableFilterParam;-><init>()V

    .line 1228
    iput-object p2, v1, Lcom/ss/android/vesdk/filterparam/VEVideoStableFilterParam;->ptsMatrix:Ljava/lang/String;

    .line 1229
    iput-object p3, v1, Lcom/ss/android/vesdk/filterparam/VEVideoStableFilterParam;->videoStabMatrix:Ljava/lang/String;

    .line 1230
    iput p4, v1, Lcom/ss/android/vesdk/filterparam/VEVideoStableFilterParam;->width:I

    .line 1231
    iput p5, v1, Lcom/ss/android/vesdk/filterparam/VEVideoStableFilterParam;->height:I

    .line 1232
    new-instance p2, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;

    const-string p3, "stable"

    sget-object p4, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->NONE:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    invoke-direct {p2, p1, p3, p4}, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;)V

    .line 1233
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 p3, 0x0

    .line 1234
    invoke-direct {p0, p3, v0, p2, v1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFilterIndex(IILcom/bytedance/ies/cutsame/veadapter/FilterArgs;Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    .line 1233
    invoke-virtual {p1, v2, p0, v1}, Lcom/ss/android/vesdk/VEEditor;->updateTrackClipFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    return p0

    .line 1224
    :cond_45
    :goto_45
    const-string p0, "setStable: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0
.end method

.method public setStickerAnimation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJ)I
    .registers 12

    .line 1583
    const-string v0, "setStickerAnimation: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 1586
    :cond_10
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result p1

    const/16 v0, -0x2b03

    if-ne p1, v0, :cond_22

    .line 1588
    const-string p0, "setStickerAnimation: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0

    .line 1592
    :cond_22
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    long-to-int p5, p5

    long-to-int p6, p7

    move-object v2, p3

    move-object p3, p2

    move p2, p4

    move p4, p5

    move-object p5, v2

    invoke-virtual/range {p0 .. p6}, Lcom/ss/android/vesdk/VEEditor;->setStickerAnimation(IZLjava/lang/String;ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public setSubVideoLayer(Ljava/lang/String;I)I
    .registers 5

    .line 1033
    const-string v0, "setSubVideoLayer: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 1036
    :cond_10
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result p1

    const/16 v0, -0x2b03

    if-ne p1, v0, :cond_22

    .line 1038
    const-string p0, "setSubVideoLayer: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0

    .line 1042
    :cond_22
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VEEditor;->setExternalVideoTrackLayer(II)I

    move-result p0

    return p0
.end method

.method public setSurfaceReDraw(Z)V
    .registers 2

    .line 2859
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEditor;->setSurfaceReDraw(Z)V

    return-void
.end method

.method public setTextTemplateParams(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 6

    .line 1547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTextTemplateParams: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/16 p0, -0x17

    return p0

    .line 1549
    :cond_2d
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result p1

    const/16 v0, -0x2b03

    if-ne p1, v0, :cond_3f

    .line 1551
    const-string p0, "setTextTemplateParams: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0

    .line 1554
    :cond_3f
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/vesdk/VEEditor;->setInfoStickerTemplateParams(ILjava/lang/String;)I

    move-result p1

    if-eqz p3, :cond_4c

    .line 1556
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->refreshCurrentFrame()I

    :cond_4c
    return p1
.end method

.method public setTrackFilterEnable(IZZ)I
    .registers 4

    .line 708
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/VEEditor;->setTrackFilterEnable(IZZ)I

    move-result p0

    return p0
.end method

.method public setTransition(Ljava/lang/String;Ljava/lang/String;JI)I
    .registers 8

    .line 1108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTransition:  filePath is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " duration is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " tran type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 p0, -0x17

    return p0

    .line 1111
    :cond_2f
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result p1

    const/16 v0, -0x2b03

    if-ne p1, v0, :cond_41

    .line 1113
    const-string p0, "setTransition: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0

    .line 1117
    :cond_41
    new-instance v0, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;

    invoke-direct {v0}, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;-><init>()V

    .line 1118
    iput-object p2, v0, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;->transName:Ljava/lang/String;

    long-to-int p2, p3

    .line 1119
    iput p2, v0, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;->tranDuration:I

    .line 1120
    iput p5, v0, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;->tranType:I

    .line 1121
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/vesdk/VEEditor;->changeTransitionAt(ILcom/ss/android/vesdk/filterparam/VETransitionFilterParam;)I

    move-result p0

    return p0
.end method

.method public setVideoAnim(Ljava/lang/String;Ljava/lang/String;JJ)I
    .registers 11

    .line 1128
    const-string v0, "setVideoAnim: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 1131
    :cond_10
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    .line 1132
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v2, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result v2

    const/16 v3, -0x2b03

    if-eq v0, v3, :cond_4e

    if-ne v2, v3, :cond_23

    goto :goto_4e

    .line 1138
    :cond_23
    new-instance v1, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;

    invoke-direct {v1}, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;-><init>()V

    .line 1139
    iput-object p2, v1, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->animPath:Ljava/lang/String;

    long-to-int p2, p3

    .line 1140
    iput p2, v1, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->animStartTime:I

    add-long/2addr p3, p5

    long-to-int p2, p3

    .line 1141
    iput p2, v1, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->animEndTime:I

    .line 1142
    sget-object p2, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam$paramType;->UPDATE_VIDEO_ANIMATION:Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam$paramType;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    iput p2, v1, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->transformType:I

    .line 1144
    new-instance p2, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;

    const-string p3, "canvas blend"

    sget-object p4, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->VIDEO:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    invoke-direct {p2, p1, p3, p4}, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;)V

    .line 1145
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 p3, 0x0

    .line 1146
    invoke-direct {p0, p3, v0, p2, v1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFilterIndex(IILcom/bytedance/ies/cutsame/veadapter/FilterArgs;Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    .line 1145
    invoke-virtual {p1, v2, p0, v1}, Lcom/ss/android/vesdk/VEEditor;->updateTrackClipFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    return p0

    .line 1134
    :cond_4e
    :goto_4e
    const-string p0, "setVideoAnim: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0
.end method

.method public setVideoPreviewConfig(Ljava/lang/String;)I
    .registers 4

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoPreviewConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    new-instance v0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoPreviewConfig;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoPreviewConfig;-><init>()V

    .line 522
    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoPreviewConfig;->fromJson(Ljava/lang/String;)V

    .line 524
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoPreviewConfig;->getLoop()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEditor;->setLoopPlay(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public startStickerAnimationPreview(II)I
    .registers 5

    .line 2717
    const-string v0, "cut.VEEditorAdapter"

    const-string v1, "startStickerAnimationPreview: "

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2718
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 2720
    :cond_10
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VEEditor;->startStickerAnimationPreview(II)I

    move-result p0

    return p0
.end method

.method public stop()V
    .registers 3

    .line 587
    const-string v0, "cut.VEEditorAdapter"

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 590
    :cond_e
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->stop()V

    .line 591
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->statusListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 592
    :try_start_16
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mTemplatePlayerStatusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

    if-eqz v1, :cond_22

    .line 593
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mTemplatePlayerStatusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;->onStop()V

    goto :goto_22

    :catchall_20
    move-exception p0

    goto :goto_24

    .line 595
    :cond_22
    :goto_22
    monitor-exit v0

    return-void

    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_20

    throw p0
.end method

.method public stopStickerAnimationPreview()I
    .registers 3

    .line 2258
    const-string v0, "cut.VEEditorAdapter"

    const-string v1, "stopStickerAnimationPreview: "

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2259
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->stopStickerAnimationPreview()I

    move-result p0

    return p0
.end method

.method public unlockIndex()I
    .registers 2

    .line 2700
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, -0x17

    return p0

    .line 2702
    :cond_9
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEEditor;->lockSeekVideoClip(I)I

    move-result p0

    return p0
.end method

.method public updateAmazingAdjustTime(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;II)I
    .registers 13

    .line 1764
    const-string v0, "updateAmazingAdjustTime: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 1767
    :cond_10
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result p1

    const/16 v0, -0x2b03

    if-ne p1, v0, :cond_22

    .line 1769
    const-string p0, "updateAmazingAdjustTime: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0

    .line 1773
    :cond_22
    array-length v0, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_25
    if-ge v3, v0, :cond_6c

    aget-object v4, p3, v3

    .line 1774
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFilterIndexMapKey(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1775
    iget-object v5, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mFilterIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_60

    .line 1777
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmazingAdjustTime: index null "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_69

    .line 1780
    :cond_60
    iget-object v4, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5, p4, p5}, Lcom/ss/android/vesdk/VEEditor;->updateTrackFilterTime(III)I

    :goto_69
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_6c
    return v2
.end method

.method public updateAudioPath(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 2162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAudioPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2163
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/16 p0, -0x17

    return p0

    .line 2165
    :cond_1f
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    .line 2166
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v2, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getAudioSegmentClipIndex(Ljava/lang/String;)I

    move-result p1

    const/16 v2, -0x2b03

    if-eq v0, v2, :cond_4c

    if-ne p1, v2, :cond_32

    goto :goto_4c

    .line 2172
    :cond_32
    new-instance v1, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;

    invoke-direct {v1}, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;-><init>()V

    .line 2173
    iput-object p2, v1, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;->clipFilePath:Ljava/lang/String;

    const/4 p2, 0x0

    .line 2174
    iput p2, v1, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;->sourceType:I

    .line 2176
    filled-new-array {p1}, [I

    move-result-object p1

    .line 2177
    filled-new-array {v1}, [Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;

    move-result-object p2

    .line 2178
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/ss/android/vesdk/VEEditor;->updateClipSourceParam(II[I[Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;)I

    move-result p0

    return p0

    .line 2168
    :cond_4c
    :goto_4c
    const-string p0, "updateAudioPath: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0
.end method

.method public updateAudioTrack(Ljava/lang/String;JJJJZ)I
    .registers 25

    move-wide/from16 v0, p2

    move-wide/from16 v2, p4

    .line 2141
    const-string v4, "updateAudioTrack: "

    const-string v5, "cut.VEEditorAdapter"

    invoke-static {v5, v4}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v4

    if-eqz v4, :cond_14

    const/16 p0, -0x17

    return p0

    .line 2144
    :cond_14
    iget-object v4, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v4, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v7

    const/16 v4, -0x2b03

    if-ne v7, v4, :cond_26

    .line 2146
    const-string p0, "updateAudioTrack: index error"

    invoke-static {v5, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0

    .line 2150
    :cond_26
    iget-object v6, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    long-to-int v8, v0

    add-long v0, v0, p6

    long-to-int v9, v0

    long-to-int v10, v2

    add-long v0, v2, p8

    long-to-int v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v6 .. v13}, Lcom/ss/android/vesdk/VEEditor;->updateAudioTrack(IIIIIZZ)I

    move-result v0

    .line 2151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAudioTrack: ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v0, :cond_4d

    goto :goto_5a

    :cond_4d
    cmp-long v1, p6, p8

    if-eqz v1, :cond_5a

    .line 2154
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    move/from16 v3, p10

    invoke-virtual {p0, v1, v7, v2, v3}, Lcom/ss/android/vesdk/VEEditor;->setClipReservePitch(IIIZ)I

    :cond_5a
    :goto_5a
    return v0
.end method

.method public updateEffectTime(Ljava/lang/String;II)I
    .registers 6

    .line 2602
    const-string v0, "updateEffectTime: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2603
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result p1

    const/16 v0, -0x2b03

    if-ne p1, v0, :cond_19

    .line 2605
    const-string p0, "updateEffectTime: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0

    .line 2609
    :cond_19
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/VEEditor;->updateTrackFilterTime(III)I

    move-result p0

    return p0
.end method

.method public updateTextSticker(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 6

    .line 2064
    const-string v0, "updateTextSticker: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 2067
    :cond_10
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result p1

    const/16 v0, -0x2b03

    if-ne p1, v0, :cond_22

    .line 2069
    const-string p0, "updateTextSticker: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0

    .line 2073
    :cond_22
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->getState()Lcom/ss/android/vesdk/VEEditor$VEState;

    move-result-object v0

    sget-object v1, Lcom/ss/android/vesdk/VEEditor$VEState;->COMPLETED:Lcom/ss/android/vesdk/VEEditor$VEState;

    if-ne v0, v1, :cond_2f

    .line 2074
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->invalidate()V

    .line 2076
    :cond_2f
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/vesdk/VEEditor;->updateTextSticker(ILjava/lang/String;)I

    move-result p1

    if-eqz p3, :cond_3c

    .line 2078
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->refreshCurrentFrame()I

    :cond_3c
    return p1
.end method

.method updateVideoCrop(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    .line 874
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, -0x17

    return p0

    .line 876
    :cond_9
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    .line 877
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v1, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result v1

    .line 878
    const-string v2, "cut.VEEditorAdapter"

    const/16 v3, -0x2b03

    if-eq v0, v3, :cond_53

    if-ne v1, v3, :cond_1e

    goto :goto_53

    .line 883
    :cond_1e
    new-instance v3, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;

    invoke-direct {v3}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;-><init>()V

    .line 884
    invoke-virtual {v3, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->fromJson(Ljava/lang/String;)V

    .line 886
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateVideoCrop: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    invoke-static {v3}, Lcom/bytedance/ies/cutsame/veadapter/CropEx;->toVE(Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;)Lcom/ss/android/vesdk/filterparam/VEVideoCropFilterParam;

    move-result-object p2

    .line 888
    new-instance v2, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;

    const-string v3, "crop filter"

    sget-object v4, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->NONE:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    invoke-direct {v2, p1, v3, v4}, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;)V

    .line 889
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 v3, 0x0

    .line 891
    invoke-direct {p0, v3, v0, v2, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFilterIndex(IILcom/bytedance/ies/cutsame/veadapter/FilterArgs;Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    .line 889
    invoke-virtual {p1, v1, p0, p2}, Lcom/ss/android/vesdk/VEEditor;->updateTrackClipFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    return p0

    .line 879
    :cond_53
    :goto_53
    const-string p0, "updateVideoCrop: index error"

    invoke-static {v2, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0
.end method

.method public updateVideoMask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 9

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVideoMask: path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " params "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_27

    const/16 p0, -0x17

    return p0

    .line 646
    :cond_27
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    .line 647
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v2, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result v2

    const/16 v3, -0x2b03

    if-eq v0, v3, :cond_5d

    if-ne v2, v3, :cond_3a

    goto :goto_5d

    .line 653
    :cond_3a
    new-instance v1, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;

    invoke-direct {v1}, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;-><init>()V

    .line 654
    iput-object p2, v1, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->path:Ljava/lang/String;

    .line 655
    iput-object p3, v1, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->param:Ljava/lang/String;

    .line 656
    iput p4, v1, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->order:I

    const/4 p2, 0x1

    .line 657
    iput p2, v1, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterDurationType:I

    .line 659
    new-instance p2, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;

    const-string p3, "mask_filter"

    sget-object p4, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->VIDEO:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    invoke-direct {p2, p1, p3, p4}, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;)V

    const/4 p1, 0x0

    .line 660
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFilterIndex(IILcom/bytedance/ies/cutsame/veadapter/FilterArgs;Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p1

    .line 661
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, v2, p1, v1}, Lcom/ss/android/vesdk/VEEditor;->updateTrackClipFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    return p0

    .line 649
    :cond_5d
    :goto_5d
    const-string p0, "updateVideoMask: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0
.end method

.method public updateVideoOrder([Ljava/lang/String;[I)I
    .registers 5

    .line 2425
    const-string v0, "cut.VEEditorAdapter"

    const-string v1, "updateVideoOrder: "

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2426
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 2428
    :cond_10
    new-instance v0, Lcom/ss/android/vesdk/VETimelineParams;

    invoke-direct {v0, p1}, Lcom/ss/android/vesdk/VETimelineParams;-><init>([Ljava/lang/String;)V

    .line 2429
    iput-object p2, v0, Lcom/ss/android/vesdk/VETimelineParams;->videoFileIndex:[I

    .line 2430
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEEditor;->updateSceneFileOrder(Lcom/ss/android/vesdk/VETimelineParams;)I

    move-result p1

    if-ltz p1, :cond_24

    .line 2432
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {p0, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->updateMainSegmentOrder([I)V

    :cond_24
    return p1
.end method

.method public updateVideoPath(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVideoPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/16 p0, -0x17

    return p0

    .line 789
    :cond_1f
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    .line 790
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v2, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result p1

    const/16 v2, -0x2b03

    if-eq v0, v2, :cond_4b

    if-ne p1, v2, :cond_32

    goto :goto_4b

    .line 796
    :cond_32
    new-instance v1, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;

    invoke-direct {v1}, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;-><init>()V

    .line 797
    iput-object p2, v1, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;->clipFilePath:Ljava/lang/String;

    const/4 p2, 0x0

    .line 798
    iput p2, v1, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;->sourceType:I

    .line 800
    filled-new-array {p1}, [I

    move-result-object p1

    .line 801
    filled-new-array {v1}, [Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;

    move-result-object v1

    .line 802
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p2, v0, p1, v1}, Lcom/ss/android/vesdk/VEEditor;->updateClipSourceParam(II[I[Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;)I

    move-result p0

    return p0

    .line 792
    :cond_4b
    :goto_4b
    const-string p0, "updateVideoPath: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0
.end method

.method public updateVideoSize(Ljava/lang/String;IIFFFZ)I
    .registers 19

    .line 2356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateVideoSize: w "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " h "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " scale "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " transX "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " transY "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "cut.VEEditorAdapter"

    invoke-static {v7, v3}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2357
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v3

    if-eqz v3, :cond_43

    const/16 v0, -0x17

    return v0

    .line 2359
    :cond_43
    iget-object v3, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v3, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result v3

    const/16 v9, -0x2b03

    if-ne v3, v9, :cond_55

    .line 2361
    const-string v0, "updateVideoSize: index error"

    invoke-static {v7, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x14

    return v0

    .line 2365
    :cond_55
    new-instance v7, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;

    invoke-direct {v7}, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;-><init>()V

    const/4 v9, 0x1

    .line 2366
    iput v9, v7, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;->sourceType:I

    .line 2367
    iput p2, v7, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;->clipWidth:I

    .line 2368
    iput p3, v7, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;->clipHeight:I

    const/high16 v1, -0x1000000

    .line 2369
    iput v1, v7, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;->clipColorValue:I

    .line 2370
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor;->getCurPosition()I

    move-result v9

    .line 2371
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    filled-new-array {v3}, [I

    move-result-object v2

    filled-new-array {v7}, [Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;

    move-result-object v3

    const/4 v10, 0x0

    invoke-virtual {v1, v10, v2, v3}, Lcom/ss/android/vesdk/VEEditor;->updateClipSourceParam(I[I[Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;)I

    const/4 v7, 0x0

    .line 2373
    const-string v8, ""

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    invoke-virtual/range {v0 .. v8}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->updateVideoTransform(Ljava/lang/String;FFFFFZLjava/lang/String;)I

    if-eqz p7, :cond_8a

    .line 2375
    invoke-virtual {p0, v9, v10}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->seekDone(IZ)I

    :cond_8a
    return v10
.end method

.method public updateVideoTimeClip(Ljava/lang/String;IID)I
    .registers 9

    .line 842
    const-string v0, "updateVideoTimeClip: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 845
    :cond_10
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    .line 846
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v2, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result p1

    const/16 v2, -0x2b03

    if-eq v0, v2, :cond_3e

    if-ne p1, v2, :cond_23

    goto :goto_3e

    .line 852
    :cond_23
    new-instance v1, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;

    invoke-direct {v1}, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;-><init>()V

    .line 853
    iput p2, v1, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimIn:I

    .line 854
    iput p3, v1, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimOut:I

    .line 855
    iput-wide p4, v1, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->speed:D

    .line 857
    filled-new-array {p1}, [I

    move-result-object p1

    .line 858
    filled-new-array {v1}, [Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;

    move-result-object p2

    .line 860
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 p3, 0x0

    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/ss/android/vesdk/VEEditor;->updateClipsTimelineParam(II[I[Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I

    move-result p0

    return p0

    .line 848
    :cond_3e
    :goto_3e
    const-string p0, "updateVideoTimeClip: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0
.end method

.method public updateVideoTimeClipParam(Ljava/lang/String;Lcom/bytedance/ies/cutsameconsumer/templatemodel/TimeClipParam;)I
    .registers 6

    .line 815
    const-string v0, "updateVideoTimeClip: "

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, -0x17

    return p0

    .line 818
    :cond_10
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    .line 819
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v2, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result p1

    const/16 v2, -0x2b03

    if-eq v0, v2, :cond_37

    if-ne p1, v2, :cond_23

    goto :goto_37

    .line 825
    :cond_23
    invoke-static {p2}, Lcom/bytedance/ies/cutsame/util/TimeClipParamExt;->toVE(Lcom/bytedance/ies/cutsameconsumer/templatemodel/TimeClipParam;)Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;

    move-result-object p2

    .line 827
    filled-new-array {p1}, [I

    move-result-object p1

    .line 828
    filled-new-array {p2}, [Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;

    move-result-object p2

    .line 830
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/ss/android/vesdk/VEEditor;->updateClipsTimelineParam(II[I[Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I

    move-result p0

    return p0

    .line 821
    :cond_37
    :goto_37
    const-string p0, "updateVideoTimeClip: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0
.end method

.method public updateVideoTransform(Ljava/lang/String;FFFFFZLjava/lang/String;)I
    .registers 13

    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVideoTransform: alpha "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " scale "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " transX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " transY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->isVENotInit()Z

    move-result v0

    if-eqz v0, :cond_37

    const/16 p0, -0x17

    return p0

    .line 917
    :cond_37
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    .line 918
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    invoke-virtual {v2, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result v2

    const/16 v3, -0x2b03

    if-eq v0, v3, :cond_82

    if-ne v2, v3, :cond_4a

    goto :goto_82

    .line 924
    :cond_4a
    new-instance v1, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;

    invoke-direct {v1}, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;-><init>()V

    .line 925
    iput p2, v1, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->alpha:F

    .line 926
    iput p3, v1, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->scaleFactor:F

    float-to-int p2, p4

    .line 927
    rem-int/lit16 p2, p2, 0x168

    if-gez p2, :cond_5a

    add-int/lit16 p2, p2, 0x168

    :cond_5a
    int-to-float p2, p2

    .line 931
    iput p2, v1, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->degree:F

    .line 932
    iput p5, v1, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->transX:F

    .line 933
    iput p6, v1, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->transY:F

    .line 934
    iput p7, v1, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->mirror:I

    .line 935
    sget-object p2, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam$paramType;->UPDATE_VIDEO_TRANSFORM:Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam$paramType;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    iput p2, v1, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->transformType:I

    .line 936
    iput-object p8, v1, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->blendModePath:Ljava/lang/String;

    .line 937
    new-instance p2, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;

    const-string p3, "canvas blend"

    sget-object p4, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->VIDEO:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    invoke-direct {p2, p1, p3, p4}, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;)V

    .line 938
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 p3, 0x0

    .line 940
    invoke-direct {p0, p3, v0, p2, v1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->getFilterIndex(IILcom/bytedance/ies/cutsame/veadapter/FilterArgs;Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    .line 938
    invoke-virtual {p1, v2, p0, v1}, Lcom/ss/android/vesdk/VEEditor;->updateTrackClipFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    return p0

    .line 920
    :cond_82
    :goto_82
    const-string p0, "updateVideoTransform: index error"

    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0
.end method

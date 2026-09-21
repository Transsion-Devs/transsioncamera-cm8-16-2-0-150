.class public Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field final mAIManager:Lcom/transsion/camera/app/common/ai/IAIManager;

.field private final mAIMediaSaver:Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver;

.field final mAIService:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService;

.field private volatile mAppUIRef:Ljava/lang/ref/WeakReference;

.field private final mRequestController:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

.field final mRequestDispatcher:Lcom/transsion/camera/featurelibs/aicommon/request/RequestDispatcher;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAIMediaSaver(Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;)Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->mAIMediaSaver:Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestController(Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;)Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->mRequestController:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrequestImpl(Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->requestImpl(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateThumbnail(Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;Landroid/net/Uri;[B)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->updateThumbnail(Landroid/net/Uri;[B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 43
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RequestManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/ai/IAIManager;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService;Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;)V
    .registers 5

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->mAIManager:Lcom/transsion/camera/app/common/ai/IAIManager;

    .line 61
    iput-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->mAIService:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService;

    .line 62
    new-instance p2, Lcom/transsion/camera/featurelibs/aicommon/request/RequestDispatcher;

    invoke-direct {p2}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestDispatcher;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->mRequestDispatcher:Lcom/transsion/camera/featurelibs/aicommon/request/RequestDispatcher;

    .line 63
    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    invoke-direct {v0, p3, p2}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;-><init>(Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;Lcom/transsion/camera/featurelibs/aicommon/request/RequestDispatcher;)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->mRequestController:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    .line 64
    new-instance p2, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ai/IAIManager;->getFeature()Lcom/transsion/camera/app/common/ai/IAIFeature;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver;-><init>(Lcom/transsion/camera/app/common/ai/IAIFeature;)V

    iput-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->mAIMediaSaver:Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver;

    return-void
.end method

.method private requestImpl(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 4

    .line 102
    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;

    invoke-direct {v0, p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;-><init>(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;)V

    .line 103
    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2;-><init>(Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;Lcom/transsion/camera/app/common/ai/AIRequest;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->setRequestCallback(Lcom/transsion/camera/featurelibs/aicommon/request/IRequestCallback;)V

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->mRequestController:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->enqueue(Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;)V

    return-void
.end method

.method private updateThumbnail(Landroid/net/Uri;[B)V
    .registers 6

    .line 157
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateThumbnail uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " jpeg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1d

    array-length v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1f

    :cond_1d
    const-string v2, "null"

    :goto_1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->mAppUIRef:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_34

    .line 160
    const-string/jumbo p0, "updateThumbnail mAppUIRef is null"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 163
    :cond_34
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/IAppUI;

    if-nez p0, :cond_43

    .line 165
    const-string/jumbo p0, "updateThumbnail appUI is null"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 168
    :cond_43
    invoke-static {p2}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromExif([B)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_50

    const/16 v0, 0x200

    const/4 v1, 0x0

    .line 170
    invoke-static {p2, v0, v1}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromJpeg([BIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_50
    if-eqz v0, :cond_55

    .line 173
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    :cond_55
    const/4 p2, 0x1

    .line 175
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;Z)V

    return-void
.end method


# virtual methods
.method public getRequestHolder()Lcom/transsion/camera/app/common/ai/AIRequestHolder;
    .registers 1

    .line 217
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->mRequestController:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->getRequestHolder()Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    move-result-object p0

    return-object p0
.end method

.method public processingAndQueuingSizeToday()I
    .registers 2

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->mRequestController:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->getRequestHolder()Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->buildRequestStatusInfo()Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;

    move-result-object p0

    .line 81
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;->processingSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;->queuingSize()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public refresh()V
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->mRequestController:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->refresh()V

    return-void
.end method

.method public reload()V
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->mRequestController:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->reload()V

    return-void
.end method

.method public remove(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 2

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->mRequestController:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->remove(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method

.method public request(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 5

    .line 93
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$1;

    const-string v2, "request"

    invoke-direct {v1, p0, v2, p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$1;-><init>(Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;Ljava/lang/String;Lcom/transsion/camera/app/common/ai/AIRequest;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Lcom/transsion/camera/utils/threads/WorkTask;)V

    return-void
.end method

.method public retry(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 5

    .line 187
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retry request@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$3;

    const-string v2, "AIRetry"

    invoke-direct {v1, p0, v2, p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$3;-><init>(Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;Ljava/lang/String;Lcom/transsion/camera/app/common/ai/AIRequest;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Lcom/transsion/camera/utils/threads/WorkTask;)V

    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->mAppUIRef:Ljava/lang/ref/WeakReference;

    return-void

    .line 71
    :cond_6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->mAppUIRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V
    .registers 2

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->mAIMediaSaver:Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver;->setStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    return-void
.end method

.method public terminate(Lcom/transsion/camera/app/common/ai/AIRequest;)Z
    .registers 2

    .line 183
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->mRequestController:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->terminate(Lcom/transsion/camera/app/common/ai/AIRequest;)Z

    move-result p0

    return p0
.end method

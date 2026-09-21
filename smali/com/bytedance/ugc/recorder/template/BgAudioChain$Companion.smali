.class public final Lcom/bytedance/ugc/recorder/template/BgAudioChain$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ugc/recorder/template/BgAudioChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/bytedance/ugc/recorder/template/BgAudioChain$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIoExecutors()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 16
    # getter for: Lcom/bytedance/ugc/recorder/template/BgAudioChain;->ioExecutors:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lcom/bytedance/ugc/recorder/template/BgAudioChain;->access$getIoExecutors$cp()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.class public final Lcom/bytedance/ugc/recorder/template/TrackCollectChain$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ugc/recorder/template/TrackCollectChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/bytedance/ugc/recorder/template/TrackCollectChain$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTAG()Ljava/lang/String;
    .registers 1

    .line 21
    # getter for: Lcom/bytedance/ugc/recorder/template/TrackCollectChain;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/bytedance/ugc/recorder/template/TrackCollectChain;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

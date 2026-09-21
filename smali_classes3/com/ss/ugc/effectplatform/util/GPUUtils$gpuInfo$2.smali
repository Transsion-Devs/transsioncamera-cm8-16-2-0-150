.class final Lcom/ss/ugc/effectplatform/util/GPUUtils$gpuInfo$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ugc/effectplatform/util/GPUUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/ss/ugc/effectplatform/util/GPUUtils$gpuInfo$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ss/ugc/effectplatform/util/GPUUtils$gpuInfo$2;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/util/GPUUtils$gpuInfo$2;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/util/GPUUtils$gpuInfo$2;->INSTANCE:Lcom/ss/ugc/effectplatform/util/GPUUtils$gpuInfo$2;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;
    .registers 1

    .line 66
    sget-object p0, Lcom/ss/ugc/effectplatform/util/GPUUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/GPUUtils;

    # invokes: Lcom/ss/ugc/effectplatform/util/GPUUtils;->generateGPUInfo()Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;
    invoke-static {p0}, Lcom/ss/ugc/effectplatform/util/GPUUtils;->access$generateGPUInfo(Lcom/ss/ugc/effectplatform/util/GPUUtils;)Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 20
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/util/GPUUtils$gpuInfo$2;->invoke()Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;

    move-result-object p0

    return-object p0
.end method

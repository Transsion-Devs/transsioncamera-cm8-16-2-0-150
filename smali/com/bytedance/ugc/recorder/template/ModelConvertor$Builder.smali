.class public final Lcom/bytedance/ugc/recorder/template/ModelConvertor$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ugc/recorder/template/ModelConvertor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mPrepareChains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ugc/recorder/template/IConvertorChain;",
            ">;"
        }
    .end annotation
.end field

.field sourceModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;


# direct methods
.method public constructor <init>(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ugc/recorder/template/ModelConvertor$Builder;->mPrepareChains:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/bytedance/ugc/recorder/template/ModelConvertor$Builder;->sourceModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    return-void
.end method

.method static synthetic access$000(Lcom/bytedance/ugc/recorder/template/ModelConvertor$Builder;)Ljava/util/List;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/template/ModelConvertor$Builder;->mPrepareChains:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public addPrepareChain(Lcom/bytedance/ugc/recorder/template/IConvertorChain;)Lcom/bytedance/ugc/recorder/template/ModelConvertor$Builder;
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/bytedance/ugc/recorder/template/ModelConvertor$Builder;->mPrepareChains:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public execute()Lcom/bytedance/ies/nle/editor_jni/NLEModel;
    .registers 2

    .line 51
    new-instance v0, Lcom/bytedance/ugc/recorder/template/ModelConvertor;

    invoke-direct {v0, p0}, Lcom/bytedance/ugc/recorder/template/ModelConvertor;-><init>(Lcom/bytedance/ugc/recorder/template/ModelConvertor$Builder;)V

    # invokes: Lcom/bytedance/ugc/recorder/template/ModelConvertor;->execute()Lcom/bytedance/ies/nle/editor_jni/NLEModel;
    invoke-static {v0}, Lcom/bytedance/ugc/recorder/template/ModelConvertor;->access$100(Lcom/bytedance/ugc/recorder/template/ModelConvertor;)Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object p0

    return-object p0
.end method

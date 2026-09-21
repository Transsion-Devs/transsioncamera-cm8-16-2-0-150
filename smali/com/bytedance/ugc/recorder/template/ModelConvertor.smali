.class public Lcom/bytedance/ugc/recorder/template/ModelConvertor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ugc/recorder/template/ModelConvertor$Builder;
    }
.end annotation


# instance fields
.field private mBuilder:Lcom/bytedance/ugc/recorder/template/ModelConvertor$Builder;

.field private mOriModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

.field private mPrepareChains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ugc/recorder/template/IConvertorChain;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bytedance/ugc/recorder/template/ModelConvertor$Builder;)V
    .registers 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ugc/recorder/template/ModelConvertor;->mPrepareChains:Ljava/util/List;

    .line 19
    iget-object v0, p1, Lcom/bytedance/ugc/recorder/template/ModelConvertor$Builder;->sourceModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    iput-object v0, p0, Lcom/bytedance/ugc/recorder/template/ModelConvertor;->mOriModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    .line 20
    # getter for: Lcom/bytedance/ugc/recorder/template/ModelConvertor$Builder;->mPrepareChains:Ljava/util/List;
    invoke-static {p1}, Lcom/bytedance/ugc/recorder/template/ModelConvertor$Builder;->access$000(Lcom/bytedance/ugc/recorder/template/ModelConvertor$Builder;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ugc/recorder/template/ModelConvertor;->mPrepareChains:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lcom/bytedance/ugc/recorder/template/ModelConvertor;)Lcom/bytedance/ies/nle/editor_jni/NLEModel;
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/bytedance/ugc/recorder/template/ModelConvertor;->execute()Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object p0

    return-object p0
.end method

.method private execute()Lcom/bytedance/ies/nle/editor_jni/NLEModel;
    .registers 4

    .line 27
    iget-object v0, p0, Lcom/bytedance/ugc/recorder/template/ModelConvertor;->mOriModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    if-eqz v0, :cond_1f

    .line 28
    iget-object v0, p0, Lcom/bytedance/ugc/recorder/template/ModelConvertor;->mPrepareChains:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ugc/recorder/template/IConvertorChain;

    .line 29
    iget-object v2, p0, Lcom/bytedance/ugc/recorder/template/ModelConvertor;->mOriModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    invoke-interface {v1, v2}, Lcom/bytedance/ugc/recorder/template/IConvertorChain;->onNext(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/ugc/recorder/template/ModelConvertor;->mOriModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    goto :goto_a

    .line 32
    :cond_1f
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/template/ModelConvertor;->mOriModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    return-object p0
.end method

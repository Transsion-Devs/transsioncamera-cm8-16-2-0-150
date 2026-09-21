.class Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Lcom/bytedance/ies/nle/editor_jni/NLENode;",
        ">;"
    }
.end annotation


# instance fields
.field private iterator:Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;

.field final synthetic this$0:Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$1;->this$0:Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$1;Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;)Ljava/util/Map$Entry;
    .registers 2

    .line 99
    invoke-direct {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$1;->init(Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method private init(Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;)Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;",
            ")",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/bytedance/ies/nle/editor_jni/NLENode;",
            ">;"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$1;->iterator:Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getKey()Ljava/lang/Object;
    .registers 1

    .line 99
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$1;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$1;->iterator:Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;

    # invokes: Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;->getKey()Ljava/lang/String;
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;->access$300(Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$1;->iterator:Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;

    # invokes: Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;->getValue()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;->access$100(Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;)Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 1

    .line 99
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$1;->getValue()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$1;->iterator:Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;

    # invokes: Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;->getValue()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    invoke-static {v0}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;->access$100(Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;)Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object v0

    .line 117
    iget-object p0, p0, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$1;->iterator:Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;

    # invokes: Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;->setValue(Lcom/bytedance/ies/nle/editor_jni/NLENode;)V
    invoke-static {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;->access$200(Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;Lcom/bytedance/ies/nle/editor_jni/NLENode;)V

    return-object v0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 99
    check-cast p1, Lcom/bytedance/ies/nle/editor_jni/NLENode;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$1;->setValue(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    return-object p0
.end method

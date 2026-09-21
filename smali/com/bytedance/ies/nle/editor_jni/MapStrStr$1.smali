.class Lcom/bytedance/ies/nle/editor_jni/MapStrStr$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/nle/editor_jni/MapStrStr;->entrySet()Ljava/util/Set;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private iterator:Lcom/bytedance/ies/nle/editor_jni/MapStrStr$Iterator;

.field final synthetic this$0:Lcom/bytedance/ies/nle/editor_jni/MapStrStr;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/nle/editor_jni/MapStrStr;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/bytedance/ies/nle/editor_jni/MapStrStr$1;->this$0:Lcom/bytedance/ies/nle/editor_jni/MapStrStr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/bytedance/ies/nle/editor_jni/MapStrStr$1;Lcom/bytedance/ies/nle/editor_jni/MapStrStr$Iterator;)Ljava/util/Map$Entry;
    .registers 2

    .line 99
    invoke-direct {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/MapStrStr$1;->init(Lcom/bytedance/ies/nle/editor_jni/MapStrStr$Iterator;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method private init(Lcom/bytedance/ies/nle/editor_jni/MapStrStr$Iterator;)Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ies/nle/editor_jni/MapStrStr$Iterator;",
            ")",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/bytedance/ies/nle/editor_jni/MapStrStr$1;->iterator:Lcom/bytedance/ies/nle/editor_jni/MapStrStr$Iterator;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getKey()Ljava/lang/Object;
    .registers 1

    .line 99
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/MapStrStr$1;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/bytedance/ies/nle/editor_jni/MapStrStr$1;->iterator:Lcom/bytedance/ies/nle/editor_jni/MapStrStr$Iterator;

    # invokes: Lcom/bytedance/ies/nle/editor_jni/MapStrStr$Iterator;->getKey()Ljava/lang/String;
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/MapStrStr$Iterator;->access$300(Lcom/bytedance/ies/nle/editor_jni/MapStrStr$Iterator;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 1

    .line 99
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/MapStrStr$1;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/bytedance/ies/nle/editor_jni/MapStrStr$1;->iterator:Lcom/bytedance/ies/nle/editor_jni/MapStrStr$Iterator;

    # invokes: Lcom/bytedance/ies/nle/editor_jni/MapStrStr$Iterator;->getValue()Ljava/lang/String;
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/MapStrStr$Iterator;->access$100(Lcom/bytedance/ies/nle/editor_jni/MapStrStr$Iterator;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 99
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/MapStrStr$1;->setValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/MapStrStr$1;->iterator:Lcom/bytedance/ies/nle/editor_jni/MapStrStr$Iterator;

    # invokes: Lcom/bytedance/ies/nle/editor_jni/MapStrStr$Iterator;->getValue()Ljava/lang/String;
    invoke-static {v0}, Lcom/bytedance/ies/nle/editor_jni/MapStrStr$Iterator;->access$100(Lcom/bytedance/ies/nle/editor_jni/MapStrStr$Iterator;)Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object p0, p0, Lcom/bytedance/ies/nle/editor_jni/MapStrStr$1;->iterator:Lcom/bytedance/ies/nle/editor_jni/MapStrStr$Iterator;

    # invokes: Lcom/bytedance/ies/nle/editor_jni/MapStrStr$Iterator;->setValue(Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/MapStrStr$Iterator;->access$200(Lcom/bytedance/ies/nle/editor_jni/MapStrStr$Iterator;Ljava/lang/String;)V

    return-object v0
.end method

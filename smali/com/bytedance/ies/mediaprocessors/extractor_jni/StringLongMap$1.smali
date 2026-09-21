.class Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->entrySet()Ljava/util/Set;
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private iterator:Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;

.field final synthetic this$0:Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$1;->this$0:Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$1;Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;)Ljava/util/Map$Entry;
    .registers 2

    .line 99
    invoke-direct {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$1;->init(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method private init(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;)Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;",
            ")",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$1;->iterator:Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getKey()Ljava/lang/Object;
    .registers 1

    .line 99
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$1;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$1;->iterator:Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;

    # invokes: Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;->getKey()Ljava/lang/String;
    invoke-static {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;->access$300(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/Long;
    .registers 3

    .line 112
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$1;->iterator:Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;

    # invokes: Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;->getValue()J
    invoke-static {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;->access$100(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 1

    .line 99
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$1;->getValue()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Ljava/lang/Long;)Ljava/lang/Long;
    .registers 5

    .line 116
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$1;->iterator:Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;

    # invokes: Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;->getValue()J
    invoke-static {v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;->access$100(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 117
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$1;->iterator:Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    # invokes: Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;->setValue(J)V
    invoke-static {p0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;->access$200(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;J)V

    return-object v0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 99
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$1;->setValue(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

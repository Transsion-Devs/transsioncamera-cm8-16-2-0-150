.class Lcom/bytedance/ies/nle/editor_jni/SetString$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/nle/editor_jni/SetString;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private curr:Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;

.field private end:Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;

.field final synthetic this$0:Lcom/bytedance/ies/nle/editor_jni/SetString;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/nle/editor_jni/SetString;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/bytedance/ies/nle/editor_jni/SetString$1;->this$0:Lcom/bytedance/ies/nle/editor_jni/SetString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/bytedance/ies/nle/editor_jni/SetString$1;)Ljava/util/Iterator;
    .registers 1

    .line 58
    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/SetString$1;->init()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private init()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/SetString$1;->this$0:Lcom/bytedance/ies/nle/editor_jni/SetString;

    # invokes: Lcom/bytedance/ies/nle/editor_jni/SetString;->begin()Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;
    invoke-static {v0}, Lcom/bytedance/ies/nle/editor_jni/SetString;->access$000(Lcom/bytedance/ies/nle/editor_jni/SetString;)Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/SetString$1;->curr:Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;

    .line 64
    iget-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/SetString$1;->this$0:Lcom/bytedance/ies/nle/editor_jni/SetString;

    # invokes: Lcom/bytedance/ies/nle/editor_jni/SetString;->end()Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;
    invoke-static {v0}, Lcom/bytedance/ies/nle/editor_jni/SetString;->access$100(Lcom/bytedance/ies/nle/editor_jni/SetString;)Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/SetString$1;->end:Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;

    return-object p0
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/SetString$1;->curr:Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;

    iget-object p0, p0, Lcom/bytedance/ies/nle/editor_jni/SetString$1;->end:Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;

    # invokes: Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;->isNot(Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;)Z
    invoke-static {v0, p0}, Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;->access$400(Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 1

    .line 58
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/SetString$1;->next()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public next()Ljava/lang/String;
    .registers 2

    .line 69
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/SetString$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 75
    iget-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/SetString$1;->curr:Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;

    # invokes: Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;->derefUnchecked()Ljava/lang/String;
    invoke-static {v0}, Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;->access$200(Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;)Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object p0, p0, Lcom/bytedance/ies/nle/editor_jni/SetString$1;->curr:Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;

    # invokes: Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;->incrementUnchecked()V
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;->access$300(Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;)V

    return-object v0

    .line 70
    :cond_12
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

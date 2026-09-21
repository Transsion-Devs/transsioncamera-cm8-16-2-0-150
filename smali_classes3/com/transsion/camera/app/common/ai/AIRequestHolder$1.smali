.class Lcom/transsion/camera/app/common/ai/AIRequestHolder$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ai/AIRequestHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Ljava/util/List<",
        "Lcom/transsion/camera/app/common/ai/AIRequest;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/ai/AIRequestHolder;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/ai/AIRequestHolder;)V
    .registers 4

    .line 54
    iput-object p1, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder$1;->this$0:Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x1

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->-$$Nest$fgetmQueuingRequests(Lcom/transsion/camera/app/common/ai/AIRequestHolder;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->-$$Nest$fgetmProcessingRequests(Lcom/transsion/camera/app/common/ai/AIRequestHolder;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->-$$Nest$fgetmCompletedRequests(Lcom/transsion/camera/app/common/ai/AIRequestHolder;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->-$$Nest$fgetmFailedRequests(Lcom/transsion/camera/app/common/ai/AIRequestHolder;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

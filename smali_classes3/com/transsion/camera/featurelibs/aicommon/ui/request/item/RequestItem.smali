.class public Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;
.super Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;
.source "SourceFile"


# instance fields
.field private final mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 4

    const/4 v0, 0x2

    .line 28
    invoke-direct {p0, v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;-><init>(I)V

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    .line 30
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;->mId:J

    return-void
.end method


# virtual methods
.method public getType()I
    .registers 5

    .line 39
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;->getType()I

    move-result v0

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestStatus()I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq p0, v1, :cond_1c

    const/4 v1, 0x2

    const/4 v3, 0x3

    if-eq p0, v1, :cond_1b

    if-eq p0, v3, :cond_19

    if-eq p0, v2, :cond_17

    return v0

    :cond_17
    const/4 p0, 0x7

    return p0

    :cond_19
    const/4 p0, 0x6

    return p0

    :cond_1b
    return v3

    :cond_1c
    return v2
.end method

.method public request()Lcom/transsion/camera/app/common/ai/AIRequest;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    return-object p0
.end method

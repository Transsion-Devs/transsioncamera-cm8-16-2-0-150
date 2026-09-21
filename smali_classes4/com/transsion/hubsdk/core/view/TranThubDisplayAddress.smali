.class public Lcom/transsion/hubsdk/core/view/TranThubDisplayAddress;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranDisplayAddressAdapter;


# instance fields
.field private mTranDisplayAddress:Lcom/transsion/hubsdk/view/TranDisplayAddress;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/transsion/hubsdk/view/TranDisplayAddress;

    invoke-direct {v0}, Lcom/transsion/hubsdk/view/TranDisplayAddress;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubDisplayAddress;->mTranDisplayAddress:Lcom/transsion/hubsdk/view/TranDisplayAddress;

    return-void
.end method


# virtual methods
.method public getPhysicalDisplayId(Landroid/view/Display;)J
    .registers 2

    .line 17
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubDisplayAddress;->mTranDisplayAddress:Lcom/transsion/hubsdk/view/TranDisplayAddress;

    if-eqz p0, :cond_9

    .line 18
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranDisplayAddress;->getPhysicalDisplayId(Landroid/view/Display;)J

    move-result-wide p0

    return-wide p0

    :cond_9
    const-wide/16 p0, 0x0

    return-wide p0
.end method

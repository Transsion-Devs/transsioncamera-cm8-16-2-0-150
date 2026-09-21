.class public Lcom/transsion/hubsdk/core/view/TranThubViewConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranViewConfigurationAdapter;


# instance fields
.field private mTranViewConfiguration:Lcom/transsion/hubsdk/view/TranViewConfiguration;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/transsion/hubsdk/view/TranViewConfiguration;

    invoke-direct {v0}, Lcom/transsion/hubsdk/view/TranViewConfiguration;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubViewConfiguration;->mTranViewConfiguration:Lcom/transsion/hubsdk/view/TranViewConfiguration;

    return-void
.end method


# virtual methods
.method public getHoverTapSlop()I
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubViewConfiguration;->mTranViewConfiguration:Lcom/transsion/hubsdk/view/TranViewConfiguration;

    if-eqz p0, :cond_9

    .line 16
    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranViewConfiguration;->getHoverTapSlop()I

    move-result p0

    return p0

    :cond_9
    const/16 p0, 0x14

    return p0
.end method

.method public getHoverTapTimeout()I
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubViewConfiguration;->mTranViewConfiguration:Lcom/transsion/hubsdk/view/TranViewConfiguration;

    if-eqz p0, :cond_9

    .line 24
    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranViewConfiguration;->getHoverTapTimeout()I

    move-result p0

    return p0

    :cond_9
    const/16 p0, 0x96

    return p0
.end method

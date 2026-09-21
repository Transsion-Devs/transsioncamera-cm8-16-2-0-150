.class public Lcom/transsion/hubsdk/core/app/TranThubActivity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranActivityAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubActivity"


# instance fields
.field private mTranActivity:Lcom/transsion/hubsdk/app/TranActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReferrer(Landroid/app/Activity;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public sceneHappen(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 47
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 50
    :cond_7
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivity;->mTranActivity:Lcom/transsion/hubsdk/app/TranActivity;

    if-nez v0, :cond_12

    .line 51
    new-instance v0, Lcom/transsion/hubsdk/app/TranActivity;

    invoke-direct {v0}, Lcom/transsion/hubsdk/app/TranActivity;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivity;->mTranActivity:Lcom/transsion/hubsdk/app/TranActivity;

    .line 53
    :cond_12
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivity;->mTranActivity:Lcom/transsion/hubsdk/app/TranActivity;

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/hubsdk/app/TranActivity;->sceneHappen(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setupAlert(Ljava/lang/Object;)V
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivity;->mTranActivity:Lcom/transsion/hubsdk/app/TranActivity;

    if-nez v0, :cond_b

    .line 39
    new-instance v0, Lcom/transsion/hubsdk/app/TranActivity;

    invoke-direct {v0}, Lcom/transsion/hubsdk/app/TranActivity;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivity;->mTranActivity:Lcom/transsion/hubsdk/app/TranActivity;

    .line 41
    :cond_b
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivity;->mTranActivity:Lcom/transsion/hubsdk/app/TranActivity;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/app/TranActivity;->setupAlert(Ljava/lang/Object;)V

    return-void
.end method

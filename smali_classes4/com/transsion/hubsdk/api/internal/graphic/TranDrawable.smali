.class public Lcom/transsion/hubsdk/api/internal/graphic/TranDrawable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranDrawable"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/internal/graphic/TranAospDrawable;

.field private mThubService:Lcom/transsion/hubsdk/core/internal/graphic/TranThubDrawable;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/graphic/ITranDrawableAdapter;
    .registers 3

    .line 15
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 16
    sget-object p1, Lcom/transsion/hubsdk/api/internal/graphic/TranDrawable;->TAG:Ljava/lang/String;

    const-string v0, "TranThubDrawable"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/graphic/TranDrawable;->mThubService:Lcom/transsion/hubsdk/core/internal/graphic/TranThubDrawable;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/internal/graphic/TranThubDrawable;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/internal/graphic/TranThubDrawable;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/graphic/TranDrawable;->mThubService:Lcom/transsion/hubsdk/core/internal/graphic/TranThubDrawable;

    :cond_18
    return-object p1

    .line 19
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/internal/graphic/TranDrawable;->TAG:Ljava/lang/String;

    const-string v0, "TranAospDrawable"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/graphic/TranDrawable;->mAospService:Lcom/transsion/hubsdk/aosp/internal/graphic/TranAospDrawable;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/internal/graphic/TranAospDrawable;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/internal/graphic/TranAospDrawable;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/graphic/TranDrawable;->mAospService:Lcom/transsion/hubsdk/aosp/internal/graphic/TranAospDrawable;

    :cond_2b
    return-object p1
.end method

.method public setBlurSaturation(Ljava/lang/Object;F)V
    .registers 4

    if-eqz p1, :cond_c

    .line 34
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/graphic/TranDrawable;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/graphic/ITranDrawableAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/internal/graphic/ITranDrawableAdapter;->setBlurSaturation(Ljava/lang/Object;F)V

    return-void

    .line 32
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "drawable is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.class public Lcom/transsion/hubsdk/api/preference/TranPreferenceFrameLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranPreferenceFrameLayout"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/preference/TranAospPreferenceFrameLayout;

.field private mThubService:Lcom/transsion/hubsdk/core/preference/TranThubPreferenceFrameLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/preference/ITranPreferenceFrameLayoutAdapter;
    .registers 3

    .line 25
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "TranThubPreferenceFrameLayout"

    if-eqz p1, :cond_19

    .line 26
    sget-object p1, Lcom/transsion/hubsdk/api/preference/TranPreferenceFrameLayout;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object p1, p0, Lcom/transsion/hubsdk/api/preference/TranPreferenceFrameLayout;->mThubService:Lcom/transsion/hubsdk/core/preference/TranThubPreferenceFrameLayout;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/preference/TranThubPreferenceFrameLayout;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/preference/TranThubPreferenceFrameLayout;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/preference/TranPreferenceFrameLayout;->mThubService:Lcom/transsion/hubsdk/core/preference/TranThubPreferenceFrameLayout;

    :cond_18
    return-object p1

    .line 29
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/preference/TranPreferenceFrameLayout;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object p1, p0, Lcom/transsion/hubsdk/api/preference/TranPreferenceFrameLayout;->mAospService:Lcom/transsion/hubsdk/aosp/preference/TranAospPreferenceFrameLayout;

    if-nez p1, :cond_29

    new-instance p1, Lcom/transsion/hubsdk/aosp/preference/TranAospPreferenceFrameLayout;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/preference/TranAospPreferenceFrameLayout;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/preference/TranPreferenceFrameLayout;->mAospService:Lcom/transsion/hubsdk/aosp/preference/TranAospPreferenceFrameLayout;

    :cond_29
    return-object p1
.end method

.method public setRemoveBorders(Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .registers 5

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    .line 45
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/preference/TranPreferenceFrameLayout;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/preference/ITranPreferenceFrameLayoutAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/preference/ITranPreferenceFrameLayoutAdapter;->setRemoveBorders(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    return-void

    .line 43
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

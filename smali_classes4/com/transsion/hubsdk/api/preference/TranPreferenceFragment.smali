.class public Lcom/transsion/hubsdk/api/preference/TranPreferenceFragment;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranPreferenceFragment"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/preference/TranAospPreferenceFragment;

.field private mThubService:Lcom/transsion/hubsdk/core/preference/TranThubPreferenceFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getListView(Landroid/preference/PreferenceFragment;)Landroid/widget/ListView;
    .registers 3

    .line 45
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/preference/TranPreferenceFragment;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/preference/ITranPreferenceFragmentAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/preference/ITranPreferenceFragmentAdapter;->getListView(Landroid/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object p0

    return-object p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/preference/ITranPreferenceFragmentAdapter;
    .registers 3

    .line 29
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 30
    sget-object p1, Lcom/transsion/hubsdk/api/preference/TranPreferenceFragment;->TAG:Ljava/lang/String;

    const-string v0, "TranThubPreferenceFragment"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object p1, p0, Lcom/transsion/hubsdk/api/preference/TranPreferenceFragment;->mThubService:Lcom/transsion/hubsdk/core/preference/TranThubPreferenceFragment;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/preference/TranThubPreferenceFragment;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/preference/TranThubPreferenceFragment;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/preference/TranPreferenceFragment;->mThubService:Lcom/transsion/hubsdk/core/preference/TranThubPreferenceFragment;

    :cond_18
    return-object p1

    .line 33
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/preference/TranPreferenceFragment;->TAG:Ljava/lang/String;

    const-string v0, "TranAospPreferenceFragment"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object p1, p0, Lcom/transsion/hubsdk/api/preference/TranPreferenceFragment;->mAospService:Lcom/transsion/hubsdk/aosp/preference/TranAospPreferenceFragment;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/preference/TranAospPreferenceFragment;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/preference/TranAospPreferenceFragment;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/preference/TranPreferenceFragment;->mAospService:Lcom/transsion/hubsdk/aosp/preference/TranAospPreferenceFragment;

    :cond_2b
    return-object p1
.end method

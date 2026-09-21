.class public Lcom/transsion/hubsdk/api/sysprop/TranSetupWizardProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranSetupWizardProperties"

.field protected static sAospService:Lcom/transsion/hubsdk/aosp/sysprop/TranAospSetupWizardProperties;

.field protected static sThubService:Lcom/transsion/hubsdk/core/sysprop/TranThubSetupWizardProperties;


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

.method protected static getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/sysprop/ITranSetupWizardPropertiesAdapter;
    .registers 2

    .line 23
    invoke-static {p0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 24
    sget-object p0, Lcom/transsion/hubsdk/api/sysprop/TranSetupWizardProperties;->TAG:Ljava/lang/String;

    const-string v0, "TranThubSetupWizardProperties"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    sget-object p0, Lcom/transsion/hubsdk/api/sysprop/TranSetupWizardProperties;->sThubService:Lcom/transsion/hubsdk/core/sysprop/TranThubSetupWizardProperties;

    if-nez p0, :cond_18

    new-instance p0, Lcom/transsion/hubsdk/core/sysprop/TranThubSetupWizardProperties;

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/sysprop/TranThubSetupWizardProperties;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/sysprop/TranSetupWizardProperties;->sThubService:Lcom/transsion/hubsdk/core/sysprop/TranThubSetupWizardProperties;

    :cond_18
    return-object p0

    .line 27
    :cond_19
    sget-object p0, Lcom/transsion/hubsdk/api/sysprop/TranSetupWizardProperties;->TAG:Ljava/lang/String;

    const-string v0, "TranAospSetupWizardProperties"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    sget-object p0, Lcom/transsion/hubsdk/api/sysprop/TranSetupWizardProperties;->sAospService:Lcom/transsion/hubsdk/aosp/sysprop/TranAospSetupWizardProperties;

    if-nez p0, :cond_2b

    new-instance p0, Lcom/transsion/hubsdk/aosp/sysprop/TranAospSetupWizardProperties;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/sysprop/TranAospSetupWizardProperties;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/sysprop/TranSetupWizardProperties;->sAospService:Lcom/transsion/hubsdk/aosp/sysprop/TranAospSetupWizardProperties;

    :cond_2b
    return-object p0
.end method

.method public static theme()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/sysprop/TranSetupWizardProperties;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/sysprop/ITranSetupWizardPropertiesAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/hubsdk/interfaces/sysprop/ITranSetupWizardPropertiesAdapter;->theme()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

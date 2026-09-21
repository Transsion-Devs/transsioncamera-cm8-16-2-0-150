.class public Lcom/transsion/hubsdk/aosp/sysprop/TranAospSetupWizardProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/sysprop/ITranSetupWizardPropertiesAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public theme()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    invoke-static {}, Lcom/transsion/hubsdk/aosp/sysprop/TranAospSetupWizardPropertiesExt;->theme()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

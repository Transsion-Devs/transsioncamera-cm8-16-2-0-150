.class public Lcom/transsion/hubsdk/core/sysprop/TranThubSetupWizardProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/sysprop/ITranSetupWizardPropertiesAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
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

    .line 18
    invoke-static {}, Lcom/transsion/hubsdk/sysprop/TranSetupWizardProperties;->theme()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

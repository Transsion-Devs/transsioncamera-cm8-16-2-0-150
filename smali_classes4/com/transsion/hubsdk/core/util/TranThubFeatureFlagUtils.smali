.class public Lcom/transsion/hubsdk/core/util/TranThubFeatureFlagUtils;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/util/ITranFeatureFlagUtilsAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 18
    invoke-static {p1, p2}, Lcom/transsion/hubsdk/util/TranFeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.class public final synthetic Lcom/transsion/camera/utils/analytics/AnalyticsUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/utils/analytics/AnalyticsUtils;ILandroid/os/Bundle;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    iput p2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    iget v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->$r8$lambda$erOv2A9ol-wZzCxphfrSQ0t46p0(Lcom/transsion/camera/utils/analytics/AnalyticsUtils;ILandroid/os/Bundle;)V

    return-void
.end method

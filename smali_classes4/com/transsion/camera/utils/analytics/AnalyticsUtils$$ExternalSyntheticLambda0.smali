.class public final synthetic Lcom/transsion/camera/utils/analytics/AnalyticsUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$$ExternalSyntheticLambda0;->f$0:J

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    iget-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$$ExternalSyntheticLambda0;->f$0:J

    check-cast p1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$FaceInfoWrapper;

    invoke-static {v0, v1, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->$r8$lambda$ftnd1P_24NSYcQKf9I_WuEPt62k(JLcom/transsion/camera/utils/analytics/AnalyticsUtils$FaceInfoWrapper;)Z

    move-result p0

    return p0
.end method

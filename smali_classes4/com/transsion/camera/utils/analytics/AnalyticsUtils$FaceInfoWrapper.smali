.class Lcom/transsion/camera/utils/analytics/AnalyticsUtils$FaceInfoWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/analytics/AnalyticsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FaceInfoWrapper"
.end annotation


# instance fields
.field public final infos:Ljava/util/List;

.field public final time:J


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 4

    .line 1904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1901
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$FaceInfoWrapper;->time:J

    .line 1905
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$FaceInfoWrapper;->infos:Ljava/util/List;

    return-void
.end method

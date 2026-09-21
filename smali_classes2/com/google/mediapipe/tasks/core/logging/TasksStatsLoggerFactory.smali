.class public final Lcom/google/mediapipe/tasks/core/logging/TasksStatsLoggerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;
    .registers 3

    .line 6
    invoke-static {p0, p1, p2}, Lcom/google/mediapipe/tasks/core/logging/TasksStatsProtoLogger;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/logging/TasksStatsProtoLogger;

    move-result-object p0

    return-object p0
.end method

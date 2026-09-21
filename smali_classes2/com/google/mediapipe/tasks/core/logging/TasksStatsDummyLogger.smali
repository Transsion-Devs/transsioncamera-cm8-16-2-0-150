.class public Lcom/google/mediapipe/tasks/core/logging/TasksStatsDummyLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/logging/TasksStatsDummyLogger;
    .registers 3

    .line 31
    new-instance p0, Lcom/google/mediapipe/tasks/core/logging/TasksStatsDummyLogger;

    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/logging/TasksStatsDummyLogger;-><init>()V

    return-object p0
.end method


# virtual methods
.method public logInitError()V
    .registers 1

    return-void
.end method

.method public logInvocationReport(Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger$StatsSnapshot;)V
    .registers 2

    return-void
.end method

.method public logSessionClone()V
    .registers 1

    return-void
.end method

.method public logSessionEnd()V
    .registers 1

    return-void
.end method

.method public logSessionStart()V
    .registers 1

    return-void
.end method

.method public recordCpuInputArrival(J)V
    .registers 3

    return-void
.end method

.method public recordGpuInputArrival(J)V
    .registers 3

    return-void
.end method

.method public recordInvocationEnd(J)V
    .registers 3

    return-void
.end method

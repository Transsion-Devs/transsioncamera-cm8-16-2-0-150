.class public Lcom/transsion/camera/featurelibs/portraitarchitecture/service/PortraitJobService;
.super Landroid/app/job/JobService;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static mJobStartCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IJobStartCallback;

.field private static mJobStartProbeCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IJobStartCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 14
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PortraitJobService"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/service/PortraitJobService;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private static getProbeJobInfo(Landroid/content/Context;J)Landroid/app/job/JobInfo;
    .registers 5

    .line 108
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/transsion/camera/featurelibs/portraitarchitecture/service/PortraitJobService;

    .line 109
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance p0, Landroid/app/job/JobInfo$Builder;

    const/16 v1, 0x4d4

    invoke-direct {p0, v1, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/32 v0, 0x927c0

    .line 113
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 114
    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 117
    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 118
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0
.end method

.method public static invoke(Landroid/content/Context;JLcom/transsion/camera/featurelibs/portraitarchitecture/callback/IJobStartCallback;)V
    .registers 8

    .line 49
    sget-object v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/service/PortraitJobService;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "invoke "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 51
    sput-object p3, Lcom/transsion/camera/featurelibs/portraitarchitecture/service/PortraitJobService;->mJobStartCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IJobStartCallback;

    .line 52
    const-string p3, "jobscheduler"

    .line 53
    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/job/JobScheduler;

    if-nez p3, :cond_14

    return-void

    :cond_14
    const/16 v1, 0x4d3

    .line 57
    invoke-virtual {p3, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 58
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v3, Lcom/transsion/camera/featurelibs/portraitarchitecture/service/PortraitJobService;

    .line 59
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance p0, Landroid/app/job/JobInfo$Builder;

    invoke-direct {p0, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/32 v1, 0x927c0

    .line 63
    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 64
    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 67
    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 68
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    .line 71
    const-string p1, "jobScheduler  schedule"

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    :try_start_46
    invoke-virtual {p3, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_49
    .catch Ljava/lang/SecurityException; {:try_start_46 .. :try_end_49} :catch_4a

    return-void

    :catch_4a
    move-exception p0

    .line 75
    sget-object p1, Lcom/transsion/camera/featurelibs/portraitarchitecture/service/PortraitJobService;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "schedule SecurityException: "

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    .line 76
    sput-object p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/service/PortraitJobService;->mJobStartCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IJobStartCallback;

    return-void
.end method

.method public static invokeProbe(Landroid/content/Context;JLcom/transsion/camera/featurelibs/portraitarchitecture/callback/IJobStartCallback;)V
    .registers 7

    .line 82
    sget-object v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/service/PortraitJobService;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "invokeProbe "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 84
    sput-object p3, Lcom/transsion/camera/featurelibs/portraitarchitecture/service/PortraitJobService;->mJobStartProbeCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IJobStartCallback;

    .line 85
    const-string p3, "jobscheduler"

    .line 86
    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/job/JobScheduler;

    const/4 v1, 0x0

    if-nez p3, :cond_1c

    .line 88
    const-string p0, "jobScheduler is null"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 89
    sput-object v1, Lcom/transsion/camera/featurelibs/portraitarchitecture/service/PortraitJobService;->mJobStartProbeCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IJobStartCallback;

    return-void

    :cond_1c
    const/16 v2, 0x4d4

    .line 93
    invoke-virtual {p3, v2}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 94
    invoke-static {p0, p1, p2}, Lcom/transsion/camera/featurelibs/portraitarchitecture/service/PortraitJobService;->getProbeJobInfo(Landroid/content/Context;J)Landroid/app/job/JobInfo;

    move-result-object p0

    .line 96
    :try_start_25
    invoke-virtual {p3, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_45

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "schedule failed, result: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    sput-object v1, Lcom/transsion/camera/featurelibs/portraitarchitecture/service/PortraitJobService;->mJobStartProbeCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IJobStartCallback;
    :try_end_42
    .catch Ljava/lang/SecurityException; {:try_start_25 .. :try_end_42} :catch_43

    return-void

    :catch_43
    move-exception p0

    goto :goto_46

    :cond_45
    return-void

    .line 102
    :goto_46
    sget-object p1, Lcom/transsion/camera/featurelibs/portraitarchitecture/service/PortraitJobService;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "schedule SecurityException: "

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    sput-object v1, Lcom/transsion/camera/featurelibs/portraitarchitecture/service/PortraitJobService;->mJobStartProbeCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IJobStartCallback;

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 25
    :cond_4
    sget-object v1, Lcom/transsion/camera/featurelibs/portraitarchitecture/service/PortraitJobService;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "onStartJob !!!!!"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    const/16 v2, 0x4d3

    if-ne v1, v2, :cond_1b

    .line 28
    sget-object v1, Lcom/transsion/camera/featurelibs/portraitarchitecture/service/PortraitJobService;->mJobStartCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IJobStartCallback;

    if-eqz v1, :cond_2a

    .line 29
    invoke-interface {v1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IJobStartCallback;->JobStart()V

    goto :goto_2a

    .line 31
    :cond_1b
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    const/16 v2, 0x4d4

    if-ne v1, v2, :cond_2a

    .line 32
    sget-object v1, Lcom/transsion/camera/featurelibs/portraitarchitecture/service/PortraitJobService;->mJobStartProbeCallback:Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IJobStartCallback;

    if-eqz v1, :cond_2a

    .line 33
    invoke-interface {v1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IJobStartCallback;->JobStart()V

    .line 37
    :cond_2a
    :goto_2a
    invoke-virtual {p0, p1, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    .line 44
    sget-object p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/service/PortraitJobService;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onStopJob"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

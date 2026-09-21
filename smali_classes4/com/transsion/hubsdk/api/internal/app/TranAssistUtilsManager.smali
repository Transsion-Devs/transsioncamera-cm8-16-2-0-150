.class public Lcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAssistUtilsManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsService;

.field private mThubService:Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService;


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


# virtual methods
.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/app/ITranAssistUtilsAdapter;
    .registers 2

    .line 69
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 70
    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager;->mThubService:Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService;

    if-nez p1, :cond_11

    new-instance p1, Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager;->mThubService:Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService;

    :cond_11
    return-object p1

    .line 72
    :cond_12
    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager;->mAospService:Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsService;

    if-nez p1, :cond_1d

    new-instance p1, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsService;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsService;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager;->mAospService:Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsService;

    :cond_1d
    return-object p1
.end method

.method public showSessionForActiveService(Landroid/os/Bundle;ILcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager;->showSessionForActiveServiceExt(Landroid/os/Bundle;ILcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public showSessionForActiveServiceExt(Landroid/os/Bundle;ILcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .registers 6

    .line 56
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/app/ITranAssistUtilsAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/internal/app/ITranAssistUtilsAdapter;->showSessionForActiveServiceExt(Landroid/os/Bundle;ILcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

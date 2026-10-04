.class public Lcom/transsion/hubsdk/aosp/rms/TranAospRmsPqeManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/rms/ITranRmsPqeManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospRmsPqeManager"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTranPictureList(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13
    sget-object p0, Lcom/transsion/hubsdk/aosp/rms/TranAospRmsPqeManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTranPictureList mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public getTranPictureSupportMode()[I
    .registers 2

    .line 19
    sget-object p0, Lcom/transsion/hubsdk/aosp/rms/TranAospRmsPqeManager;->TAG:Ljava/lang/String;

    const-string v0, "getTranPictureSupportMode"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public setTranPictureMode(ILjava/lang/String;)V
    .registers 3

    .line 24
    sget-object p0, Lcom/transsion/hubsdk/aosp/rms/TranAospRmsPqeManager;->TAG:Ljava/lang/String;

    const-string p1, "setTranPictureMode"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

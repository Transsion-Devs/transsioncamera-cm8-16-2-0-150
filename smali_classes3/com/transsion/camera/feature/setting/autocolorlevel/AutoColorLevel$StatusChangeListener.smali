.class Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel$StatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusChangeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;)V
    .registers 2

    .line 306
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 306
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 310
    invoke-static {}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onStatusChanged], key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 311
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "capture_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_55

    .line 313
    :cond_2c
    const-string p1, "capture_start"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 314
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->onCaptureStart()V

    return-void

    .line 315
    :cond_3a
    const-string p1, "capture_end"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 316
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->onAllCaptureEnd()V

    return-void

    .line 317
    :cond_48
    const-string p1, "shot2shot_end"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 318
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->onShot2ShotEnd()V

    :cond_55
    :goto_55
    return-void
.end method

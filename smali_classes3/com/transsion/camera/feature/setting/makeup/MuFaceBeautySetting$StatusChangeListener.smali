.class Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting$StatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;
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
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 201
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 204
    const-string v0, "key_makeup_feature"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;

    .line 205
    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->access$000(Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 206
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getTotalMemory()J

    move-result-wide v0

    const-wide/16 v2, 0xfa0

    cmp-long p1, v0, v2

    if-gez p1, :cond_46

    .line 207
    const-string/jumbo p1, "{\"intensityArray\":[0.6,0.6],\"isContrast\":false,\"keyArray\":[],\"path\":\"\",\"styleNumber\":0,\"feature\":noeffect}"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    .line 208
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;

    const-string p2, "off"

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 209
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->access$100(Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_46
    return-void
.end method

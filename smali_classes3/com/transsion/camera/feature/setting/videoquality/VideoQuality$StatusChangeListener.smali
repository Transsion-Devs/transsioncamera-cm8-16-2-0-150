.class Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;
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
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)V
    .registers 2

    .line 609
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;Lcom/transsion/camera/feature/setting/videoquality/VideoQuality-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 609
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 613
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "key_on_quality_change_end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cc

    const-string v0, "key_quality_recover_default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto/16 :goto_c1

    .line 615
    :cond_15
    const-string p1, "null"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c2

    .line 616
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->-$$Nest$fgetmVideoQualityMonitor(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->-$$Nest$msize(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;)I

    move-result p1

    if-nez p1, :cond_c1

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->-$$Nest$fgetmIsOnValueChanging(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Z

    move-result p1

    if-nez p1, :cond_c1

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->-$$Nest$fgetmIsValueInitiated(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Z

    move-result p1

    if-eqz p1, :cond_c1

    .line 617
    invoke-static {}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "david VideoQuality recover to default."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 618
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->access$300(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getKey()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->access$200(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    .line 619
    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {p2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->access$500(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->access$400(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "video_facebeauty_video_quality"

    invoke-virtual {p2, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 618
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b8

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    .line 620
    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->access$700(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getKey()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->access$600(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    .line 621
    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {p2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->access$900(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->access$800(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "video_portrait_video_quality"

    invoke-virtual {p2, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 620
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c1

    .line 622
    :cond_b8
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;
    invoke-static {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->access$1000(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->-$$Nest$mstoreValue(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;Ljava/lang/String;)V

    :cond_c1
    :goto_c1
    return-void

    .line 626
    :cond_c2
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->-$$Nest$fgetmVideoQualityMonitor(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->-$$Nest$maddAvoidKey(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;Ljava/lang/String;)V

    return-void

    .line 630
    :cond_cc
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->-$$Nest$fputmIsOnValueChanging(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;Z)V

    return-void
.end method

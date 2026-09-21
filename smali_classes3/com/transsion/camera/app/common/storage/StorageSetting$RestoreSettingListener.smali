.class Lcom/transsion/camera/app/common/storage/StorageSetting$RestoreSettingListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/storage/StorageSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreSettingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/storage/StorageSetting;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/storage/StorageSetting;)V
    .registers 2

    .line 191
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/StorageSetting$RestoreSettingListener;->this$0:Lcom/transsion/camera/app/common/storage/StorageSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/storage/StorageSetting;Lcom/transsion/camera/app/common/storage/StorageSetting-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/StorageSetting$RestoreSettingListener;-><init>(Lcom/transsion/camera/app/common/storage/StorageSetting;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 191
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/storage/StorageSetting$RestoreSettingListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 194
    const-string p1, "on"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 195
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting$RestoreSettingListener;->this$0:Lcom/transsion/camera/app/common/storage/StorageSetting;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/StorageSetting;->-$$Nest$fgetmDefaultValue(Lcom/transsion/camera/app/common/storage/StorageSetting;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/storage/StorageSetting;->onValueChanged(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

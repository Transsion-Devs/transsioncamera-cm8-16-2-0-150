.class Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI$StatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;)V
    .registers 2

    .line 228
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 228
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 231
    invoke-static {}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusChangeListener : key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "key_camera_zoom"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_c6

    goto :goto_64

    :sswitch_30
    const-string v0, "key_super_anti_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    goto :goto_64

    :cond_39
    const/4 v4, 0x4

    goto :goto_64

    :sswitch_3b
    const-string v0, "key_wide_camera_item_seleccted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_44

    goto :goto_64

    :cond_44
    const/4 v4, 0x3

    goto :goto_64

    :sswitch_46
    const-string v0, "key_real_zoom_value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f

    goto :goto_64

    :cond_4f
    const/4 v4, 0x2

    goto :goto_64

    :sswitch_51
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_58

    goto :goto_64

    :cond_58
    move v4, v2

    goto :goto_64

    :sswitch_5a
    const-string v0, "wide_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_63

    goto :goto_64

    :cond_63
    move v4, v3

    :goto_64
    packed-switch v4, :pswitch_data_dc

    goto :goto_97

    .line 252
    :pswitch_68
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;

    invoke-static {p0, p2}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->-$$Nest$mupdateTouchZoomStatus(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;Ljava/lang/String;)V

    return-void

    .line 240
    :pswitch_6e
    const-string p1, "value_flip_camera_first_item_selected"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 241
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;

    invoke-static {p0, v3}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->-$$Nest$mupdateEntryValueList(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;Z)V

    return-void

    .line 242
    :cond_7c
    const-string p1, "value_flip_camera_second_item_selected"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8a

    .line 243
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;

    invoke-static {p0, v2}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->-$$Nest$mupdateEntryValueList(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;Z)V

    return-void

    .line 244
    :cond_8a
    const-string p1, "value_flip_camera_wide_item_selected"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_97

    .line 245
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;

    invoke-static {p0, v3}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->-$$Nest$mupdateEntryValueList(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;Z)V

    :cond_97
    :goto_97
    return-void

    .line 237
    :pswitch_98
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->-$$Nest$sfgetTELE_LENS_RATE()I

    move-result p2

    if-le p1, p2, :cond_a5

    goto :goto_a6

    :cond_a5
    move v2, v3

    :goto_a6
    invoke-static {p0, v2}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->-$$Nest$mupdateEntryValueList(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;Z)V

    return-void

    .line 234
    :pswitch_aa
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;

    invoke-static {p0, p2}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->-$$Nest$misTeleCamera(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->-$$Nest$mupdateEntryValueList(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;Z)V

    return-void

    .line 249
    :pswitch_b4
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->access$000(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->-$$Nest$misTeleCamera(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->-$$Nest$mupdateEntryValueList(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;Z)V

    return-void

    :sswitch_data_c6
    .sparse-switch
        -0x6115b1ef -> :sswitch_5a
        -0x43305133 -> :sswitch_51
        0x46fa7166 -> :sswitch_46
        0x47dd8aea -> :sswitch_3b
        0x7ddb1282 -> :sswitch_30
    .end sparse-switch

    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_b4
        :pswitch_aa
        :pswitch_98
        :pswitch_6e
        :pswitch_68
    .end packed-switch
.end method

.class Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;)V
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 164
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 167
    sget-object v0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 168
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "key_camera_zoom"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_16c

    goto :goto_78

    :sswitch_2e
    const-string v0, "key_super_anti_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    goto :goto_78

    :cond_37
    const/4 v4, 0x6

    goto :goto_78

    :sswitch_39
    const-string v0, "key_wide_camera_touch_event"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_42

    goto :goto_78

    :cond_42
    const/4 v4, 0x5

    goto :goto_78

    :sswitch_44
    const-string v0, "key_wide_camera_item_seleccted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4d

    goto :goto_78

    :cond_4d
    const/4 v4, 0x4

    goto :goto_78

    :sswitch_4f
    const-string v0, "key_real_zoom_value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_58

    goto :goto_78

    :cond_58
    const/4 v4, 0x3

    goto :goto_78

    :sswitch_5a
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_61

    goto :goto_78

    :cond_61
    const/4 v4, 0x2

    goto :goto_78

    :sswitch_63
    const-string v0, "key_video_quality"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6c

    goto :goto_78

    :cond_6c
    move v4, v2

    goto :goto_78

    :sswitch_6e
    const-string v0, "wide_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_77

    goto :goto_78

    :cond_77
    move v4, v3

    :goto_78
    packed-switch v4, :pswitch_data_18a

    goto/16 :goto_158

    .line 192
    :pswitch_7d
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->access$200(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p1

    if-eqz p1, :cond_158

    .line 193
    const-string p1, "super"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_99

    .line 194
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->access$300(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p0

    const/16 p1, 0xd6

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 196
    :cond_99
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->access$400(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p0

    const/16 p1, 0x7b

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 213
    :pswitch_a5
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;

    const-string p1, "value_wide_camera_touch_down"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->-$$Nest$fputmLongClickTriggered(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;Z)V

    return-void

    .line 204
    :pswitch_b1
    const-string p1, "value_wide_camera_item_first_zoom_seleccted"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_bf

    .line 205
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;

    invoke-static {p0, v3}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->-$$Nest$mupdateEntryValue(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;Z)V

    return-void

    .line 206
    :cond_bf
    const-string p1, "value_wide_camera_item_second_zoom_seleccted"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_cd

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;

    invoke-static {p0, v2}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->-$$Nest$mupdateEntryValue(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;Z)V

    return-void

    .line 208
    :cond_cd
    const-string p1, "value_wide_camera_item_wide_cam_seleccted"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_158

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;

    invoke-static {p0, v3}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->-$$Nest$mupdateEntryValue(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;Z)V

    return-void

    .line 201
    :pswitch_db
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->-$$Nest$sfgetTELE_LENS_RATE()I

    move-result p2

    if-le p1, p2, :cond_e8

    goto :goto_e9

    :cond_e8
    move v2, v3

    :goto_e9
    invoke-static {p0, v2}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->-$$Nest$mupdateEntryValue(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;Z)V

    return-void

    .line 170
    :pswitch_ed
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->-$$Nest$fgetmLongClickTriggered(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;)Z

    move-result p1

    if-eqz p1, :cond_f6

    goto :goto_158

    .line 173
    :cond_f6
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;

    invoke-static {p0, p2}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->-$$Nest$misTeleCamera(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->-$$Nest$mupdateEntryValue(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;Z)V

    return-void

    .line 176
    :pswitch_100
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isSupportNewVideoSize()Z

    move-result p1

    if-eqz p1, :cond_158

    .line 177
    const-string p1, "6"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_144

    const-string p1, "6_60"

    .line 178
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_117

    goto :goto_144

    .line 180
    :cond_117
    const-string p1, "8"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12f

    const-string p1, "8_60"

    .line 181
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12f

    const-string p1, "11"

    .line 182
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_158

    .line 183
    :cond_12f
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->access$100(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/app/common/R$dimen;->top_bar_anti_video_4K_translate:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->-$$Nest$mtranslateItem(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;F)V

    return-void

    .line 179
    :cond_144
    :goto_144
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->access$000(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/app/common/R$dimen;->top_bar_anti_video_1080_translate:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->-$$Nest$mtranslateItem(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;F)V

    :cond_158
    :goto_158
    return-void

    .line 216
    :pswitch_159
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->access$500(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->-$$Nest$misTeleCamera(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;->-$$Nest$mupdateEntryValue(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;Z)V

    return-void

    nop

    :sswitch_data_16c
    .sparse-switch
        -0x6115b1ef -> :sswitch_6e
        -0x60d2d0a5 -> :sswitch_63
        -0x43305133 -> :sswitch_5a
        0x46fa7166 -> :sswitch_4f
        0x47dd8aea -> :sswitch_44
        0x54cc5a8c -> :sswitch_39
        0x7ddb1282 -> :sswitch_2e
    .end sparse-switch

    :pswitch_data_18a
    .packed-switch 0x0
        :pswitch_159
        :pswitch_100
        :pswitch_ed
        :pswitch_db
        :pswitch_b1
        :pswitch_a5
        :pswitch_7d
    .end packed-switch
.end method

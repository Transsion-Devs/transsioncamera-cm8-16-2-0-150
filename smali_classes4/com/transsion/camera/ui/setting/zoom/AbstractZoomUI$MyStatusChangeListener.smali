.class Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyStatusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)V
    .registers 2

    .line 1859
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 1859
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 1863
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyStatusChangeListener: key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1864
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1865
    const-string v0, "key_macro"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmIsMacroSupportZoom(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1866
    const-string v0, "off"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1867
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI()V

    .line 1872
    :cond_49
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    const/4 v2, 0x1

    if-nez v1, :cond_a6

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    if-nez v1, :cond_a6

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmSupportSuperAntiVideoV2(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSuperAntiVideoOn:Z

    if-nez v0, :cond_a6

    .line 1873
    :cond_60
    const-string v0, "key_normal_camera_item_long_click"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 1874
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "value_normal_camera_item_long_click_in_normal"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    const-string v0, "value_normal_camera_item_long_click_in_wide"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    goto :goto_a6

    .line 1876
    :cond_7c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iput-boolean v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsLongTouchToNormal:Z

    goto :goto_a6

    .line 1879
    :cond_81
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    iput-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mScaleStart:Z

    .line 1880
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$mupdateZoomUI(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)V

    goto :goto_a6

    .line 1883
    :cond_8b
    const-string v0, "key_wide_camera_item_long_click"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 1884
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$mupdateZoomUI(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)V

    goto :goto_a6

    .line 1885
    :cond_99
    const-string v0, "key_tele_camera_item_long_click"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 1886
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$mupdateZoomUI(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)V

    .line 1890
    :cond_a6
    :goto_a6
    const-string v0, "key_wide_camera_item_seleccted"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_319

    .line 1891
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatCameraId:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1892
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v3, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSmoothZoomValue:I

    if-eq v3, v2, :cond_c1

    .line 1893
    invoke-virtual {v1, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateSmoothStatus(I)V

    .line 1895
    :cond_c1
    const-string v1, "value_wide_camera_item_tele_zoom_selected"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_df

    .line 1896
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->AsdSupportFiveItems()Z

    move-result v0

    if-eqz v0, :cond_319

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInAsdMode:Z

    if-eqz v1, :cond_319

    .line 1897
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    iget-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    if-eq v1, v3, :cond_319

    .line 1898
    iput-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    goto/16 :goto_319

    .line 1901
    :cond_df
    const-string v1, "value_wide_camera_item_tele_second_zoom_selected"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fd

    .line 1902
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->AsdSupportFiveItems()Z

    move-result v0

    if-eqz v0, :cond_319

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInAsdMode:Z

    if-eqz v1, :cond_319

    .line 1903
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    iget-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    if-eq v1, v3, :cond_319

    .line 1904
    iput-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    goto/16 :goto_319

    .line 1907
    :cond_fd
    const-string v1, "value_wide_camera_item_second_zoom_seleccted"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_295

    const-string v1, "value_flip_camera_second_item_selected"

    .line 1908
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10f

    goto/16 :goto_295

    .line 1929
    :cond_10f
    const-string v1, "value_wide_camera_item_first_zoom_seleccted"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22c

    const-string v1, "value_flip_camera_first_item_selected"

    .line 1930
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    goto/16 :goto_22c

    .line 1945
    :cond_121
    const-string v1, "value_wide_camera_item_wide_cam_seleccted"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1db

    const-string v1, "value_flip_camera_wide_item_selected"

    .line 1946
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_133

    goto/16 :goto_1db

    .line 1960
    :cond_133
    const-string v0, "value_macro_camera_item_zoom_seleccted"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16b

    .line 1961
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMacroMode:Z

    if-nez v1, :cond_319

    .line 1962
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->m2XBlurCameraId:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_153

    .line 1963
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mBlurCameraId:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    goto/16 :goto_319

    .line 1964
    :cond_153
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_319

    .line 1965
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    goto/16 :goto_319

    .line 1968
    :cond_16b
    const-string v0, "value_macro_camera_item_second_zoom_seleccted"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a3

    .line 1969
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMacroMode:Z

    if-nez v1, :cond_319

    .line 1970
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->m2XBlurCameraId:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18b

    .line 1971
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mBlurCameraId:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    goto/16 :goto_319

    .line 1972
    :cond_18b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_319

    .line 1973
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    goto/16 :goto_319

    .line 1976
    :cond_1a3
    const-string v0, "value_macro_camera_item_street_photo_first_zoom_seleccted"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_319

    .line 1977
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMacroMode:Z

    if-nez v1, :cond_319

    .line 1978
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->m2XBlurCameraId:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c3

    .line 1979
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mBlurCameraId:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    goto/16 :goto_319

    .line 1980
    :cond_1c3
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_319

    .line 1981
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    goto/16 :goto_319

    .line 1947
    :cond_1db
    :goto_1db
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v3, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportSat:Z

    if-eqz v3, :cond_1e7

    iget-boolean v3, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSmoothZoomNeed:Z

    if-eqz v3, :cond_1e7

    if-nez v0, :cond_1ef

    :cond_1e7
    iget-object v0, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isIszZoomStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_203

    .line 1948
    :cond_1ef
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    sget-object v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_SAT_INIT_VALUE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 1949
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    iget v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI(II)V

    goto :goto_21b

    .line 1951
    :cond_203
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 1952
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    iget-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    if-eq v1, v3, :cond_21b

    .line 1953
    iput-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    .line 1956
    :cond_21b
    :goto_21b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateProgressByZoom()V

    .line 1957
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomStyle:I

    if-eqz v1, :cond_319

    .line 1958
    iget v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iput v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    goto/16 :goto_319

    .line 1931
    :cond_22c
    :goto_22c
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v3, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportSat:Z

    if-eqz v3, :cond_262

    iget-boolean v3, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSmoothZoomNeed:Z

    if-eqz v3, :cond_262

    if-eqz v0, :cond_262

    .line 1932
    iget-object v0, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {v3}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getKey()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v5, v5, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 1933
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    iget v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI(II)V

    goto :goto_284

    .line 1935
    :cond_262
    iget-object v0, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 1936
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v0

    if-eq v1, v0, :cond_284

    .line 1937
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    .line 1940
    :cond_284
    :goto_284
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateProgressByZoom()V

    .line 1941
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomStyle:I

    if-eqz v1, :cond_319

    .line 1942
    iget v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iput v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    goto/16 :goto_319

    .line 1909
    :cond_295
    :goto_295
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v3, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportSat:Z

    if-eqz v3, :cond_2cb

    iget-boolean v3, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSmoothZoomNeed:Z

    if-eqz v3, :cond_2cb

    if-eqz v0, :cond_2cb

    .line 1910
    iget-object v0, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {v3}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getKey()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v5, v5, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 1911
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    iget v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI(II)V

    goto :goto_30a

    .line 1913
    :cond_2cb
    iget-object v0, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 1915
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportTele:Z

    if-eqz v0, :cond_2f4

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->AsdSupportFiveItems()Z

    move-result v0

    if-eqz v0, :cond_2e9

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInAsdMode:Z

    if-nez v0, :cond_2f4

    .line 1916
    :cond_2e9
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    iget-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    if-eq v1, v3, :cond_30a

    .line 1917
    iput-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    goto :goto_30a

    .line 1920
    :cond_2f4
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v0

    if-eq v1, v0, :cond_30a

    .line 1921
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    .line 1925
    :cond_30a
    :goto_30a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateProgressByZoom()V

    .line 1926
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomStyle:I

    if-eqz v1, :cond_319

    .line 1927
    iget v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iput v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    .line 1987
    :cond_319
    :goto_319
    const-string v0, "mode_entry_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3e4

    .line 1988
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v3, "com.transsion.camera.feature.mode.macro.MacroModeEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMacroMode:Z

    .line 1989
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v3, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVideoMode:Z

    .line 1990
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v3, "com.transsion.camera.feature.funvideo.mode.FunVideoModeEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInFunVideoMode:Z

    .line 1991
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v3, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInPmasterMode:Z

    .line 1992
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v3, "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInTimeLapseVideoMode:Z

    .line 1993
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v3, "com.transsion.camera.feature.mode.supermoon.SuperMoonModeEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSuperMoonMode:Z

    .line 1994
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v3, "com.transsion.camera.feature.mode.movie.MovieModeEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMovieMode:Z

    .line 1995
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v3, "com.transsion.camera.feature.mode.vlog.VlogModeEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVlogMode:Z

    .line 1996
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v3, "com.transsion.camera.feature.mode.aigc.AIGCModeEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInAIGCMode:Z

    .line 1997
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v3, "com.transsion.camera.feature.mode.doc.DocumentEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInDocumentMode:Z

    .line 1998
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v3, "com.transsion.camera.feature.mode.video.SlowMotionModeEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSlowMotionMode:Z

    .line 1999
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v3, "com.transsion.camera.feature.mode.dualvideo.DualVideoModeEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInDualVideoMode:Z

    .line 2000
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v3, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInAsdMode:Z

    .line 2001
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v3, "com.transsion.camera.feature.mode.professional.ProfessionalModeEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInProfessionMode:Z

    .line 2002
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v3, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3c3

    const-string v3, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    .line 2003
    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3c1

    goto :goto_3c3

    :cond_3c1
    move v3, v1

    goto :goto_3c4

    :cond_3c3
    :goto_3c3
    move v3, v2

    :goto_3c4
    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSuperNightMode:Z

    .line 2004
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v3, "com.transsion.camera.feature.mode.streetphoto.StreetPhotoModeEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInStreetPhotoMode:Z

    .line 2005
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v3, "com.transsion.camera.feature.mode.photo.IntentPhotoModeEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsIntentPhotoMode:Z

    .line 2006
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v3, "com.transsion.camera.feature.mode.video.IntentVideoModeEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsIntentVideoMode:Z

    .line 2009
    :cond_3e4
    const-string v0, "key_conflict_ui_state"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_427

    .line 2010
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_46c

    goto :goto_418

    :sswitch_3f8
    const-string v0, "value_filter_ui_off_no_show"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_401

    goto :goto_418

    :cond_401
    const/4 v3, 0x2

    goto :goto_418

    :sswitch_403
    const-string v0, "value_filter_ui_on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40c

    goto :goto_418

    :cond_40c
    move v3, v2

    goto :goto_418

    :sswitch_40e
    const-string v0, "value_filter_ui_off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_417

    goto :goto_418

    :cond_417
    move v3, v1

    :goto_418
    packed-switch v3, :pswitch_data_47a

    goto :goto_427

    .line 2012
    :pswitch_41c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setWheelViewShowFlag(Z)V

    goto :goto_427

    .line 2016
    :pswitch_422
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setWheelViewShowFlag(Z)V

    .line 2021
    :cond_427
    :goto_427
    const-string v0, "key_super_anti_video"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46a

    .line 2022
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v0, "super"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    iput-boolean p2, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSuperAntiVideoOn:Z

    .line 2023
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean p2, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSuperAntiVideoOn:Z

    if-eqz p2, :cond_46a

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmSupportSuperAntiVideoV2(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result p1

    if-eqz p1, :cond_46a

    .line 2024
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object p2, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 2025
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object p2, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    iget-object v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    if-eq p2, v0, :cond_45d

    .line 2026
    iput-object v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    .line 2028
    :cond_45d
    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateProgressByZoom()V

    .line 2029
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomStyle:I

    if-eqz p1, :cond_46a

    .line 2030
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    :cond_46a
    return-void

    nop

    :sswitch_data_46c
    .sparse-switch
        -0x71d81a63 -> :sswitch_40e
        -0x66c4e80f -> :sswitch_403
        -0x593d69e7 -> :sswitch_3f8
    .end sparse-switch

    :pswitch_data_47a
    .packed-switch 0x0
        :pswitch_422
        :pswitch_41c
        :pswitch_422
    .end packed-switch
.end method

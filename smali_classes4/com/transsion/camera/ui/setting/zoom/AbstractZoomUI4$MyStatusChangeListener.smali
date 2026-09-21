.class Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyStatusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)V
    .registers 2

    .line 2403
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 2403
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 2407
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 2408
    const-string v0, "mode_entry_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_ea

    .line 2409
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    const-string v3, "com.transsion.camera.feature.mode.macro.MacroModeEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInMacroMode:Z

    .line 2410
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    const-string v3, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInVideoMode:Z

    .line 2411
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    const-string v3, "com.transsion.camera.feature.funvideo.mode.FunVideoModeEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInFunVideoMode:Z

    .line 2412
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    const-string v3, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInPmasterMode:Z

    .line 2413
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    const-string v4, "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInTimeLapseVideoMode:Z

    .line 2414
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    const-string v4, "com.transsion.camera.feature.mode.supermoon.SuperMoonModeEntry"

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInSuperMoonMode:Z

    .line 2415
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    const-string v4, "com.transsion.camera.feature.mode.movie.MovieModeEntry"

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInMovieMode:Z

    .line 2416
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    const-string v4, "com.transsion.camera.feature.mode.aigc.AIGCModeEntry"

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInAIGCMode:Z

    .line 2417
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    const-string v4, "com.transsion.camera.feature.mode.aiartmuseum.AIArtMuseumModeEntry"

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mAIArtMuseumMode:Z

    .line 2418
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    const-string v4, "com.transsion.camera.feature.mode.vlog.VlogModeEntry"

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInVlogMode:Z

    .line 2419
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    const-string v4, "com.transsion.camera.feature.mode.doc.DocumentEntry"

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInDocumentMode:Z

    .line 2420
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    const-string v4, "com.transsion.camera.feature.mode.video.SlowMotionModeEntry"

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInSlowMotionMode:Z

    .line 2421
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    const-string v4, "com.transsion.camera.feature.mode.dualvideo.DualVideoModeEntry"

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInDUalVideoMode:Z

    .line 2422
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    const-string v4, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInAsdMode:Z

    .line 2423
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    const-string v4, "com.transsion.camera.feature.mode.professional.ProfessionalModeEntry"

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInProfessionMode:Z

    .line 2424
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    const-string v4, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d5

    const-string v4, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    .line 2425
    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d3

    goto :goto_d5

    :cond_d3
    move v4, v2

    goto :goto_d6

    :cond_d5
    :goto_d5
    move v4, v1

    :goto_d6
    iput-boolean v4, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInSuperNightMode:Z

    .line 2426
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInPamsterMode:Z

    .line 2427
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    const-string v3, "com.transsion.camera.feature.mode.motioncapture.MotionCaptureModeEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInFlashSnapMode:Z

    .line 2430
    :cond_ea
    const-string v0, "key_conflict_ui_state"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_239

    .line 2431
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_300

    goto/16 :goto_22a

    :sswitch_101
    const-string v0, "value_video_portrait_spot_panel_on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10b

    goto/16 :goto_22a

    :cond_10b
    const/16 v5, 0x16

    goto/16 :goto_22a

    :sswitch_10f
    const-string v0, "value_pro_seek_ui_off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_119

    goto/16 :goto_22a

    :cond_119
    const/16 v5, 0x15

    goto/16 :goto_22a

    :sswitch_11d
    const-string v0, "value_pro_seek_ui_on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_127

    goto/16 :goto_22a

    :cond_127
    const/16 v5, 0x14

    goto/16 :goto_22a

    :sswitch_12b
    const-string v0, "value_long_exposure_ui_off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_135

    goto/16 :goto_22a

    :cond_135
    const/16 v5, 0x13

    goto/16 :goto_22a

    :sswitch_139
    const-string v0, "value_timelapse_setting_ui_on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_143

    goto/16 :goto_22a

    :cond_143
    const/16 v5, 0x12

    goto/16 :goto_22a

    :sswitch_147
    const-string v0, "value_dv_video_mode_bottom_ui_off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_151

    goto/16 :goto_22a

    :cond_151
    const/16 v5, 0x11

    goto/16 :goto_22a

    :sswitch_155
    const-string v0, "value_ai_art_museum_ui_off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15f

    goto/16 :goto_22a

    :cond_15f
    const/16 v5, 0x10

    goto/16 :goto_22a

    :sswitch_163
    const-string v0, "value_timelapse_setting_ui_off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16d

    goto/16 :goto_22a

    :cond_16d
    const/16 v5, 0xf

    goto/16 :goto_22a

    :sswitch_171
    const-string v0, "value_ai_art_museum_ui_on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17b

    goto/16 :goto_22a

    :cond_17b
    const/16 v5, 0xe

    goto/16 :goto_22a

    :sswitch_17f
    const-string v0, "value_video_portrait_spot_panel_off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_189

    goto/16 :goto_22a

    :cond_189
    const/16 v5, 0xd

    goto/16 :goto_22a

    :sswitch_18d
    const-string v0, "value_facebeauty_ui_on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_197

    goto/16 :goto_22a

    :cond_197
    const/16 v5, 0xc

    goto/16 :goto_22a

    :sswitch_19b
    const-string v0, "value_aigc_effect_ui_off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a5

    goto/16 :goto_22a

    :cond_1a5
    const/16 v5, 0xb

    goto/16 :goto_22a

    :sswitch_1a9
    const-string v0, "value_facebeauty_ui_off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b3

    goto/16 :goto_22a

    :cond_1b3
    const/16 v5, 0xa

    goto/16 :goto_22a

    :sswitch_1b7
    const-string v0, "value_long_exposure_ui_on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c1

    goto/16 :goto_22a

    :cond_1c1
    const/16 v5, 0x9

    goto/16 :goto_22a

    :sswitch_1c5
    const-string v0, "value_videoportrait_bar_show"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1cf

    goto/16 :goto_22a

    :cond_1cf
    const/16 v5, 0x8

    goto/16 :goto_22a

    :sswitch_1d3
    const-string v0, "value_videoportrait_bar_hide"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dc

    goto :goto_22a

    :cond_1dc
    const/4 v5, 0x7

    goto :goto_22a

    :sswitch_1de
    const-string v0, "value_video_filter_ui_on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e7

    goto :goto_22a

    :cond_1e7
    const/4 v5, 0x6

    goto :goto_22a

    :sswitch_1e9
    const-string v0, "value_video_filter_ui_off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f2

    goto :goto_22a

    :cond_1f2
    const/4 v5, 0x5

    goto :goto_22a

    :sswitch_1f4
    const-string v0, "value_filter_ui_off_no_show"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1fd

    goto :goto_22a

    :cond_1fd
    const/4 v5, 0x4

    goto :goto_22a

    :sswitch_1ff
    const-string v0, "value_filter_ui_on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_208

    goto :goto_22a

    :cond_208
    move v5, v3

    goto :goto_22a

    :sswitch_20a
    const-string v0, "value_dv_video_mode_bottom_ui_on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_213

    goto :goto_22a

    :cond_213
    move v5, v4

    goto :goto_22a

    :sswitch_215
    const-string v0, "value_filter_ui_off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e

    goto :goto_22a

    :cond_21e
    move v5, v1

    goto :goto_22a

    :sswitch_220
    const-string v0, "value_aigc_effect_ui_on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_229

    goto :goto_22a

    :cond_229
    move v5, v2

    :goto_22a
    packed-switch v5, :pswitch_data_35e

    goto :goto_239

    .line 2457
    :pswitch_22e
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setZoomViewCanShow(Z)V

    goto :goto_239

    .line 2443
    :pswitch_234
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setZoomViewCanShow(Z)V

    .line 2464
    :cond_239
    :goto_239
    const-string v0, "key_super_anti_video"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b2

    .line 2465
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    const-string v5, "super"

    invoke-static {v5, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSuperAntiVideoOn:Z

    .line 2466
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-object v5, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    .line 2467
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-boolean v5, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInVideoMode:Z

    if-eqz v5, :cond_27e

    iget-boolean v5, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsModeSwitching:Z

    if-nez v5, :cond_27e

    .line 2468
    iget-object v5, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    .line 2469
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAntiVideoRestrictionType:I

    if-ne v0, v3, :cond_279

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-boolean v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSuperAntiVideoOn:Z

    if-nez v0, :cond_27e

    .line 2470
    :cond_279
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v0, p2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$mupdateZoomInfo(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;Ljava/lang/String;)V

    .line 2473
    :cond_27e
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSuperAntiVideoOn:Z

    if-eqz v3, :cond_2b2

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmSupportSuperAntiVideoV2(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v0

    if-eqz v0, :cond_2b2

    .line 2474
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmSuperAntivideoSupportWide(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v0

    if-eqz v0, :cond_29d

    .line 2475
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    iget-object v5, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mWideCameraId:Ljava/lang/String;

    if-eq v3, v5, :cond_2a7

    .line 2476
    iput-object v5, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    goto :goto_2a7

    .line 2479
    :cond_29d
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    .line 2481
    :cond_2a7
    :goto_2a7
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateProgressByZoom()V

    .line 2482
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    iput v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mLastCurrentValue:I

    .line 2486
    :cond_2b2
    const-string v0, "key_vlog_correct_orientation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2fe

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-boolean p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInVlogMode:Z

    if-eqz p1, :cond_2fe

    .line 2487
    const-string p1, ","

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/StringUtils;->splitString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 2488
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v4, :cond_2e5

    .line 2489
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onValueChanged illegal value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2493
    :cond_2e5
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 2494
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 2495
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setOrientation(IZ)V

    :cond_2fe
    return-void

    nop

    :sswitch_data_300
    .sparse-switch
        -0x7b2286b7 -> :sswitch_220
        -0x71d81a63 -> :sswitch_215
        -0x68523a71 -> :sswitch_20a
        -0x66c4e80f -> :sswitch_1ff
        -0x593d69e7 -> :sswitch_1f4
        -0x48d6b4a7 -> :sswitch_1e9
        -0x3c27f54b -> :sswitch_1de
        -0x24caae7b -> :sswitch_1d3
        -0x24c5b0c0 -> :sswitch_1c5
        0x3750687 -> :sswitch_1b7
        0x6a3b3dc -> :sswitch_1a9
        0x16d1af45 -> :sswitch_19b
        0x18fd05d2 -> :sswitch_18d
        0x276804c9 -> :sswitch_17f
        0x2baa12c2 -> :sswitch_171
        0x47a78cc0 -> :sswitch_163
        0x499844ec -> :sswitch_155
        0x5e0aebbf -> :sswitch_147
        0x6568806e -> :sswitch_139
        0x6b2bc9c7 -> :sswitch_12b
        0x6f623443 -> :sswitch_11d
        0x7ce4538b -> :sswitch_10f
        0x7d246345 -> :sswitch_101
    .end sparse-switch

    :pswitch_data_35e
    .packed-switch 0x0
        :pswitch_234
        :pswitch_22e
        :pswitch_234
        :pswitch_234
        :pswitch_22e
        :pswitch_22e
        :pswitch_234
        :pswitch_22e
        :pswitch_234
        :pswitch_234
        :pswitch_22e
        :pswitch_22e
        :pswitch_234
        :pswitch_22e
        :pswitch_234
        :pswitch_22e
        :pswitch_22e
        :pswitch_22e
        :pswitch_234
        :pswitch_22e
        :pswitch_234
        :pswitch_22e
        :pswitch_234
    .end packed-switch
.end method

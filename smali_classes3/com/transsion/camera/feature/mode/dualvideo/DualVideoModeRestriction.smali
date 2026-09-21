.class public Lcom/transsion/camera/feature/mode/dualvideo/DualVideoModeRestriction;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY_MODE:Ljava/lang/String;

.field private static sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 23
    const-class v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoModeEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoModeRestriction;->KEY_MODE:Ljava/lang/String;

    .line 25
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 28
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 29
    sget-object v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v2, "key_setting_quick_preview,key_self_timer,key_volume_key,key_screen_flash,key_location,key_eye_detection,key_face_detection,key_auto_watermark, key_flash, key_flash_facade,key_video_quality,key_video_enhance,key_video_super_night,key_video_enhance_yuv,key_video_super_night_yuv,key_cam_mode,key_video_asd"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 37
    sget-object v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v3, "on"

    invoke-direct {v2, v0, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_setting_quick_preview"

    const-string v4, "false"

    .line 39
    invoke-virtual {v2, v0, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 40
    const-string v2, "key_self_timer"

    const-string v4, "off"

    invoke-virtual {v0, v2, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_volume_key"

    const-string v5, "Shutter"

    .line 41
    invoke-virtual {v0, v2, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_screen_flash"

    .line 42
    invoke-virtual {v0, v2, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_location"

    .line 43
    invoke-virtual {v0, v2, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_face_detection"

    .line 45
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_auto_watermark"

    .line 46
    invoke-virtual {v0, v2, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_flash"

    const-string v3, "off,torch"

    .line 47
    invoke-virtual {v0, v2, v4, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_flash_facade"

    const-string v3, "off,torch,ringscreenlight"

    .line 49
    invoke-virtual {v0, v2, v4, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_cam_mode"

    const-string/jumbo v3, "val_dual_video"

    .line 55
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 37
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRelation(ZLjava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;
    .registers 7

    .line 61
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const/4 v1, 0x1

    const-string v2, "on"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 62
    const-string v1, "key_flash"

    const-string v3, "off,torch"

    invoke-virtual {v0, v1, p1, v3}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v1, "key_flash_facade"

    const-string v3, "off,torch,ringscreenlight"

    invoke-virtual {v0, v1, p1, v3}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string p1, "key_video_quality"

    if-eqz p0, :cond_21

    .line 67
    const-string p0, "5,6"

    invoke-virtual {v0, p1, p2, p0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    :cond_21
    const/4 p0, 0x6

    .line 70
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 71
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 70
    invoke-virtual {v0, p1, p2, p0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :goto_2d
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mDualVideoSupportAntiVideo:Z

    if-eqz p0, :cond_43

    .line 74
    const-string p0, "key_anti_video"

    const-string p1, "off,on,ai"

    invoke-virtual {v0, p0, v2, p1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string p0, "key_super_anti_video"

    const-string p1, "off,on,super,ai"

    invoke-virtual {v0, p0, v2, p1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    return-object v0
.end method

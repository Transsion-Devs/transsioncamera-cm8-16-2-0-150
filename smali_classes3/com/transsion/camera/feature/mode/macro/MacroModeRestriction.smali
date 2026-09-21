.class public Lcom/transsion/camera/feature/mode/macro/MacroModeRestriction;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HEADER_KEY:Ljava/lang/String;

.field static final VALUE_WIDE_CAM_NOT_SUPPORT:Ljava/lang/String; = "value_wide_cam_not_support"

.field static final VALUE_WIDE_CAM_SUPPORT:Ljava/lang/String; = "value_wide_cam_support"

.field private static final sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 27
    const-class v0, Lcom/transsion/camera/feature/mode/macro/MacroModeEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/macro/MacroModeRestriction;->HEADER_KEY:Ljava/lang/String;

    .line 34
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/macro/MacroModeRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 37
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 38
    const-string v2, "key_camera_zoom,key_face_detection,key_auto_focus_switch,key_setting_smart_denoise,key_asd,key_volume_key"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 45
    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string/jumbo v3, "value_wide_cam_support"

    invoke-direct {v2, v0, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/transsion/camera/utils/SettingInfo;->MACRO_ZOOM_SUPPORT_VALUE_RANGE_1:Ljava/lang/String;

    .line 47
    const-string v4, "key_camera_zoom"

    const-string/jumbo v5, "value_zoom_support_macro_active"

    invoke-virtual {v2, v4, v5, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 48
    const-string v3, "key_face_detection"

    const-string v6, "off"

    invoke-virtual {v2, v3, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 49
    const-string v7, "key_auto_focus_switch"

    invoke-virtual {v2, v7, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 50
    const-string v8, "key_setting_smart_denoise"

    const-string v9, "on"

    invoke-virtual {v2, v8, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 51
    const-string v10, "key_asd"

    const-string v11, "0"

    invoke-virtual {v2, v10, v11, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 52
    const-string v12, "key_volume_key"

    const-string v13, "Shutter"

    invoke-virtual {v2, v12, v13, v13}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 55
    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string/jumbo v14, "value_wide_cam_not_support"

    invoke-direct {v2, v0, v14}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/camera/utils/SettingInfo;->MACRO_ZOOM_SUPPORT_VALUE_RANGE_2:Ljava/lang/String;

    .line 57
    invoke-virtual {v2, v4, v5, v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0, v3, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0, v7, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v8, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v10, v11, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0, v12, v13, v13}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 55
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getRestriction(Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/RelationGroup;
    .registers 2

    .line 67
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 68
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 69
    :cond_14
    sget-object p0, Lcom/transsion/camera/feature/mode/macro/MacroModeRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v0, "key_camera_zoom"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->removeBodyKey(Ljava/lang/String;)V

    .line 71
    :cond_1b
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-gt p0, v0, :cond_28

    .line 72
    sget-object p0, Lcom/transsion/camera/feature/mode/macro/MacroModeRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v0, "key_volume_key"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->removeBodyKey(Ljava/lang/String;)V

    .line 74
    :cond_28
    sget-object p0, Lcom/transsion/camera/feature/mode/macro/MacroModeRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object p0
.end method

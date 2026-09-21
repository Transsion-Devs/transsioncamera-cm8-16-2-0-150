.class public abstract Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BACK_CAMERA_BROWN_SKIN:[Ljava/lang/String;

.field private static final BACK_CAMERA_BROWN_SKIN_FEMALE:[Ljava/lang/String;

.field private static final BACK_CAMERA_BROWN_SKIN_MALE:[Ljava/lang/String;

.field private static final BACK_CAMERA_DARK_SKIN:[Ljava/lang/String;

.field private static final BACK_CAMERA_DARK_SKIN_FEMALE:[Ljava/lang/String;

.field private static final BACK_CAMERA_DARK_SKIN_MALE:[Ljava/lang/String;

.field private static final BACK_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

.field private static final BACK_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

.field private static final BACK_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

.field private static final CUSTOM_KEY_ARRAY:[Ljava/lang/String;

.field private static final FRONT_CAMERA_BROWN_SKIN:[Ljava/lang/String;

.field private static final FRONT_CAMERA_BROWN_SKIN_FEMALE:[Ljava/lang/String;

.field private static final FRONT_CAMERA_BROWN_SKIN_MALE:[Ljava/lang/String;

.field private static final FRONT_CAMERA_DARK_SKIN:[Ljava/lang/String;

.field private static final FRONT_CAMERA_DARK_SKIN_FEMALE:[Ljava/lang/String;

.field private static final FRONT_CAMERA_DARK_SKIN_MALE:[Ljava/lang/String;

.field private static final FRONT_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

.field private static final FRONT_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

.field private static final FRONT_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

.field private static final VIDEO_BACK_CAMERA_BROWN_SKIN_MALE:[Ljava/lang/String;

.field private static final VIDEO_BACK_CAMERA_DARK_SKIN_MALE:[Ljava/lang/String;

.field private static final VIDEO_BACK_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

.field private static final VIDEO_FRONT_CAMERA_BROWN_SKIN_MALE:[Ljava/lang/String;

.field private static final VIDEO_FRONT_CAMERA_DARK_SKIN_MALE:[Ljava/lang/String;

.field private static final VIDEO_FRONT_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

.field private static final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "OriginalDefaultParam"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 47
    const-string v8, "0"

    const-string v9, "40"

    const-string v2, "0"

    const-string v3, "207"

    const-string v4, "20"

    const-string v5, "5"

    const-string v6, "0"

    const-string v7, "20"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->FRONT_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

    .line 48
    const-string v7, "0"

    const-string v8, "131"

    const-string v1, "15"

    const-string v2, "212"

    const-string v3, "20"

    const-string v4, "5"

    const-string v5, "0"

    const-string v6, "30"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->FRONT_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

    .line 49
    const-string v7, "0"

    const-string v8, "217"

    const-string v1, "0"

    const-string v2, "207"

    const-string v3, "40"

    const-string v4, "25"

    const-string v5, "0"

    const-string v6, "50"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->FRONT_CAMERA_DARK_SKIN_MALE:[Ljava/lang/String;

    .line 50
    const-string v8, "0"

    const-string v9, "333"

    const-string v2, "50"

    const-string v3, "212"

    const-string v4, "60"

    const-string v5, "25"

    const-string v6, "15"

    const-string v7, "50"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->FRONT_CAMERA_DARK_SKIN_FEMALE:[Ljava/lang/String;

    .line 51
    const-string v8, "0"

    const-string v9, "419"

    const-string v2, "0"

    const-string v3, "212"

    const-string v4, "20"

    const-string v5, "5"

    const-string v6, "0"

    const-string v7, "20"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->FRONT_CAMERA_BROWN_SKIN_MALE:[Ljava/lang/String;

    .line 52
    const-string v9, "0"

    const-string v10, "535"

    const-string v3, "25"

    const-string v4, "20"

    const-string v5, "30"

    const-string v6, "5"

    const-string v7, "10"

    const-string v8, "30"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->FRONT_CAMERA_BROWN_SKIN_FEMALE:[Ljava/lang/String;

    .line 54
    const-string v9, "0"

    const-string v10, "0"

    const-string v3, "0"

    const-string v4, "207"

    const-string v5, "0"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "0"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->BACK_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

    .line 55
    const-string v10, "0"

    const-string v11, "101"

    const-string v4, "8"

    const-string v5, "212"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "0"

    const-string v9, "0"

    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->BACK_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

    .line 56
    const-string v10, "0"

    const-string v11, "202"

    const-string v4, "0"

    const-string v5, "207"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "0"

    const-string v9, "0"

    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->BACK_CAMERA_DARK_SKIN_MALE:[Ljava/lang/String;

    .line 57
    const-string v11, "0"

    const-string v12, "303"

    const-string v5, "35"

    const-string v6, "212"

    const-string v7, "0"

    const-string v8, "0"

    const-string v9, "0"

    const-string v10, "0"

    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->BACK_CAMERA_DARK_SKIN_FEMALE:[Ljava/lang/String;

    .line 58
    const-string v11, "0"

    const-string v12, "404"

    const-string v5, "0"

    const-string v6, "212"

    const-string v7, "0"

    const-string v8, "0"

    const-string v9, "0"

    const-string v10, "0"

    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->BACK_CAMERA_BROWN_SKIN_MALE:[Ljava/lang/String;

    .line 59
    const-string v12, "0"

    const-string v13, "505"

    const-string v6, "25"

    const-string v7, "20"

    const-string v8, "0"

    const-string v9, "0"

    const-string v10, "0"

    const-string v11, "0"

    filled-new-array/range {v6 .. v13}, [Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->BACK_CAMERA_BROWN_SKIN_FEMALE:[Ljava/lang/String;

    .line 62
    sput-object v1, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->FRONT_CAMERA_DARK_SKIN:[Ljava/lang/String;

    .line 63
    sput-object v2, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->FRONT_CAMERA_BROWN_SKIN:[Ljava/lang/String;

    .line 64
    sput-object v0, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->FRONT_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

    .line 65
    sput-object v4, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->BACK_CAMERA_DARK_SKIN:[Ljava/lang/String;

    .line 66
    sput-object v5, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->BACK_CAMERA_BROWN_SKIN:[Ljava/lang/String;

    .line 67
    sput-object v3, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->BACK_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

    .line 69
    const-string v12, "head"

    const-string v13, "five_senses"

    const-string v6, "soften"

    const-string/jumbo v7, "whiten"

    const-string v8, "face"

    const-string v9, "eye"

    const-string v10, "cuttingface"

    const-string v11, "nose"

    filled-new-array/range {v6 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->CUSTOM_KEY_ARRAY:[Ljava/lang/String;

    .line 83
    const-string v7, "0"

    const-string v8, "40"

    const-string v1, "8"

    const-string v2, "207"

    const-string v3, "20"

    const-string v4, "5"

    const-string v5, "0"

    const-string v6, "20"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->VIDEO_FRONT_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

    .line 85
    const-string v7, "0"

    const-string v8, "217"

    const-string v1, "35"

    const-string v2, "207"

    const-string v3, "40"

    const-string v4, "25"

    const-string v5, "0"

    const-string v6, "50"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->VIDEO_FRONT_CAMERA_DARK_SKIN_MALE:[Ljava/lang/String;

    .line 87
    const-string v7, "0"

    const-string v8, "419"

    const-string v1, "15"

    const-string v2, "212"

    const-string v3, "20"

    const-string v4, "5"

    const-string v5, "0"

    const-string v6, "20"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->VIDEO_FRONT_CAMERA_BROWN_SKIN_MALE:[Ljava/lang/String;

    .line 90
    const-string v7, "0"

    const-string v8, "0"

    const-string v1, "8"

    const-string v2, "207"

    const-string v3, "0"

    const-string v4, "0"

    const-string v5, "0"

    const-string v6, "0"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->VIDEO_BACK_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

    .line 92
    const-string v7, "0"

    const-string v8, "202"

    const-string v1, "30"

    const-string v2, "207"

    const-string v3, "0"

    const-string v4, "0"

    const-string v5, "0"

    const-string v6, "0"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->VIDEO_BACK_CAMERA_DARK_SKIN_MALE:[Ljava/lang/String;

    .line 94
    const-string v7, "0"

    const-string v8, "404"

    const-string v1, "15"

    const-string v2, "212"

    const-string v3, "0"

    const-string v4, "0"

    const-string v5, "0"

    const-string v6, "0"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->VIDEO_BACK_CAMERA_BROWN_SKIN_MALE:[Ljava/lang/String;

    return-void
.end method

.method public static getDefaultSlimBodySetting(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    .line 190
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getFaceAttributeSupport()Z

    move-result v0

    .line 191
    const-string v1, "debug.vendor.sys.oobe.camera_skin"

    const-string/jumbo v2, "white"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    sget-object v3, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDefaultSlimBodySetting,sex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",supportMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",skinColor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 193
    const-string v3, "brown"

    if-eqz v0, :cond_75

    .line 194
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "1"

    if-eqz v0, :cond_51

    .line 195
    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4d

    .line 196
    const-string/jumbo p0, "{\"bodySlim\":0,\"buttPlump\":0,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":0,\"legLengthen\":15,\"legSlim\":5,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":0,\"waistSlim\":10}"

    return-object p0

    .line 198
    :cond_4d
    const-string/jumbo p0, "{\"bodySlim\":0,\"buttPlump\":0,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":0,\"legLengthen\":15,\"legSlim\":10,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":0,\"waistSlim\":20}"

    return-object p0

    .line 201
    :cond_51
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_67

    if-nez p1, :cond_67

    .line 202
    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_63

    .line 203
    const-string/jumbo p0, "{\"bodySlim\":0,\"buttPlump\":0,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":20,\"legLengthen\":10,\"legSlim\":10,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":25,\"waistSlim\":20}"

    return-object p0

    .line 205
    :cond_63
    const-string/jumbo p0, "{\"bodySlim\":10,\"buttPlump\":0,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":20,\"legLengthen\":20,\"legSlim\":20,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":15,\"waistSlim\":30}"

    return-object p0

    .line 208
    :cond_67
    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_71

    .line 209
    const-string/jumbo p0, "{\"bodySlim\":10,\"buttPlump\":15,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":50,\"legLengthen\":0,\"legSlim\":0,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":-25,\"waistSlim\":38}"

    return-object p0

    .line 211
    :cond_71
    const-string/jumbo p0, "{\"bodySlim\":20,\"buttPlump\":-48,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":50,\"legLengthen\":0,\"legSlim\":0,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":8,\"waistSlim\":38}"

    return-object p0

    .line 215
    :cond_75
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7f

    .line 216
    const-string/jumbo p0, "{\"bodySlim\":5,\"buttPlump\":-31,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":20,\"legLengthen\":57,\"legSlim\":20,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":-84,\"waistSlim\":42}"

    return-object p0

    .line 217
    :cond_7f
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8e

    if-eqz p1, :cond_8a

    const/4 p0, 0x1

    if-ne p1, p0, :cond_8e

    .line 218
    :cond_8a
    const-string/jumbo p0, "{\"bodySlim\":10,\"buttPlump\":-31,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":20,\"legLengthen\":57,\"legSlim\":20,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":-84,\"waistSlim\":42}"

    return-object p0

    .line 220
    :cond_8e
    const-string/jumbo p0, "{\"bodySlim\":20,\"buttPlump\":-31,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":50,\"legLengthen\":0,\"legSlim\":0,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":-84,\"waistSlim\":42}"

    return-object p0
.end method

.method public static getFacebeautyDefaultValue(Lcom/transsion/camera/app/common/setting/SettingBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 100
    const-string v2, "debug.vendor.sys.oobe.camera_skin"

    const-string/jumbo v3, "white"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    sget-object v4, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getFacebeautyDefaultValue]  key = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  gender = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " cameraId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  skinColor = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/camera/utils/CustomConfigUtil;->getFaceAttributeSupport()Z

    move-result v5

    .line 103
    invoke-static {v6}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v8, v6, :cond_4f

    move v6, v8

    goto :goto_50

    :cond_4f
    move v6, v7

    .line 104
    :goto_50
    const-string v9, "2"

    invoke-static {v1, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    .line 105
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[getFacebeautyDefaultValue],isSupport:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ",skinColor:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ",gender:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    const-string v4, "1"

    const-string v10, "key_gender_attribute_value"

    const-string v11, "   array[i] = "

    const-string v12, "  _key = "

    const-string v13, "[getFacebeautyDefaultValue] key = "

    const-string v14, "i = "

    const/4 v15, 0x0

    if-eqz v1, :cond_11b

    if-eqz v5, :cond_b4

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v10, v4, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/transsion/camera/utils/SettingInfo$Gender;->MALE:Lcom/transsion/camera/utils/SettingInfo$Gender;

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/SettingInfoUtils;->parseGender(Ljava/lang/String;Lcom/transsion/camera/utils/SettingInfo$Gender;)Lcom/transsion/camera/utils/SettingInfo$Gender;

    move-result-object v1

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyConfigUtils;->getCurrentConfigType(Lcom/transsion/camera/app/common/storage/DataStore;)Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;

    move-result-object v2

    invoke-static {v1, v2, v6, v7, v15}, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConfigManager;->getCameraConfig(Lcom/transsion/camera/utils/SettingInfo$Gender;Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;ZZLjava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_c2

    .line 113
    :cond_b4
    sget-object v1, Lcom/transsion/camera/utils/SettingInfo$Gender;->MALE:Lcom/transsion/camera/utils/SettingInfo$Gender;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyConfigUtils;->getCurrentConfigType(Lcom/transsion/camera/app/common/storage/DataStore;)Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;

    move-result-object v2

    invoke-static {v1, v2, v6, v7, v15}, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConfigManager;->getCameraConfig(Lcom/transsion/camera/utils/SettingInfo$Gender;Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;ZZLjava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_c2
    move v2, v7

    .line 116
    :goto_c3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c7

    .line 117
    sget-object v3, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 118
    sget-object v4, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant;->CUSTOM_KEY_ARRAY:[Ljava/lang/String;

    aget-object v4, v4, v2

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 120
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_118

    .line 121
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_118
    add-int/lit8 v2, v2, 0x1

    goto :goto_c3

    .line 124
    :cond_11b
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableTrueToneV2:Z

    const-string/jumbo v8, "whiten"

    if-eqz v1, :cond_1de

    if-eqz v5, :cond_14b

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v10, v4, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/transsion/camera/utils/SettingInfo$Gender;->FEMALE:Lcom/transsion/camera/utils/SettingInfo$Gender;

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/SettingInfoUtils;->parseGender(Ljava/lang/String;Lcom/transsion/camera/utils/SettingInfo$Gender;)Lcom/transsion/camera/utils/SettingInfo$Gender;

    move-result-object v1

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyConfigUtils;->getCurrentConfigType(Lcom/transsion/camera/app/common/storage/DataStore;)Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;

    move-result-object v2

    invoke-static {v1, v2, v6, v7, v15}, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConfigManager;->getCameraConfig(Lcom/transsion/camera/utils/SettingInfo$Gender;Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;ZZLjava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_159

    .line 131
    :cond_14b
    sget-object v1, Lcom/transsion/camera/utils/SettingInfo$Gender;->FEMALE:Lcom/transsion/camera/utils/SettingInfo$Gender;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyConfigUtils;->getCurrentConfigType(Lcom/transsion/camera/app/common/storage/DataStore;)Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;

    move-result-object v2

    invoke-static {v1, v2, v6, v7, v15}, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConfigManager;->getCameraConfig(Lcom/transsion/camera/utils/SettingInfo$Gender;Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;ZZLjava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_159
    move v2, v7

    .line 134
    :goto_15a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c7

    .line 135
    sget-object v3, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 136
    sget-object v4, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant;->CUSTOM_KEY_ARRAY:[Ljava/lang/String;

    aget-object v4, v4, v2

    .line 137
    invoke-static {v4, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1a3

    .line 138
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/transsion/camera/app/proxy/portrait/PortraitConstant;->getKeyFromWhitenValue(I)Ljava/lang/String;

    move-result-object v5

    .line 139
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    rem-int/lit8 v6, v6, 0x65

    .line 140
    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1a3

    .line 141
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 144
    :cond_1a3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 145
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1da

    .line 146
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1da
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_15a

    .line 150
    :cond_1de
    sget-object v1, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->BACK_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

    .line 151
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v10, -0x1

    sparse-switch v4, :sswitch_data_2cc

    goto :goto_20b

    :sswitch_1ec
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f3

    goto :goto_20b

    :cond_1f3
    const/4 v2, 0x2

    move v10, v2

    goto :goto_20b

    :sswitch_1f6
    const-string v3, "brown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1ff

    goto :goto_20b

    :cond_1ff
    const/4 v10, 0x1

    goto :goto_20b

    :sswitch_201
    const-string v3, "black"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20a

    goto :goto_20b

    :cond_20a
    move v10, v7

    :goto_20b
    packed-switch v10, :pswitch_data_2da

    goto/16 :goto_260

    :pswitch_210
    if-eqz v5, :cond_224

    if-eqz v6, :cond_21c

    if-nez v9, :cond_219

    .line 153
    sget-object v1, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->FRONT_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

    goto :goto_260

    :cond_219
    sget-object v1, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->FRONT_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

    goto :goto_260

    :cond_21c
    if-nez v9, :cond_221

    sget-object v1, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->BACK_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

    goto :goto_260

    :cond_221
    sget-object v1, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->BACK_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

    goto :goto_260

    :cond_224
    if-eqz v6, :cond_260

    .line 154
    sget-object v1, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->FRONT_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

    goto :goto_260

    :pswitch_229
    if-eqz v5, :cond_23d

    if-eqz v6, :cond_235

    if-nez v9, :cond_232

    .line 157
    sget-object v1, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->FRONT_CAMERA_BROWN_SKIN_MALE:[Ljava/lang/String;

    goto :goto_260

    :cond_232
    sget-object v1, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->FRONT_CAMERA_BROWN_SKIN_FEMALE:[Ljava/lang/String;

    goto :goto_260

    :cond_235
    if-nez v9, :cond_23a

    sget-object v1, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->BACK_CAMERA_BROWN_SKIN_MALE:[Ljava/lang/String;

    goto :goto_260

    :cond_23a
    sget-object v1, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->BACK_CAMERA_BROWN_SKIN_FEMALE:[Ljava/lang/String;

    goto :goto_260

    :cond_23d
    if-eqz v6, :cond_242

    .line 158
    sget-object v1, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->FRONT_CAMERA_BROWN_SKIN:[Ljava/lang/String;

    goto :goto_260

    :cond_242
    sget-object v1, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->BACK_CAMERA_BROWN_SKIN:[Ljava/lang/String;

    goto :goto_260

    :pswitch_245
    if-eqz v5, :cond_259

    if-eqz v6, :cond_251

    if-nez v9, :cond_24e

    .line 161
    sget-object v1, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->FRONT_CAMERA_DARK_SKIN_MALE:[Ljava/lang/String;

    goto :goto_260

    :cond_24e
    sget-object v1, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->FRONT_CAMERA_DARK_SKIN_FEMALE:[Ljava/lang/String;

    goto :goto_260

    :cond_251
    if-nez v9, :cond_256

    sget-object v1, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->BACK_CAMERA_DARK_SKIN_MALE:[Ljava/lang/String;

    goto :goto_260

    :cond_256
    sget-object v1, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->BACK_CAMERA_DARK_SKIN_FEMALE:[Ljava/lang/String;

    goto :goto_260

    :cond_259
    if-eqz v6, :cond_25e

    .line 162
    sget-object v1, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->FRONT_CAMERA_DARK_SKIN:[Ljava/lang/String;

    goto :goto_260

    :cond_25e
    sget-object v1, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->BACK_CAMERA_DARK_SKIN:[Ljava/lang/String;

    :cond_260
    :goto_260
    move v2, v7

    .line 168
    :goto_261
    array-length v3, v1

    if-ge v2, v3, :cond_2c7

    .line 169
    sget-object v3, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 170
    sget-object v4, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->CUSTOM_KEY_ARRAY:[Ljava/lang/String;

    aget-object v4, v4, v2

    .line 171
    invoke-static {v4, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_29b

    .line 172
    aget-object v5, v1, v2

    invoke-static {v5}, Lcom/transsion/camera/app/proxy/portrait/PortraitConstant;->getKeyFromWhitenValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 173
    aget-object v6, v1, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    rem-int/lit8 v6, v6, 0x65

    .line 174
    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_29b

    .line 175
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 178
    :cond_29b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 179
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2c4

    .line 180
    aget-object v0, v1, v2

    return-object v0

    :cond_2c4
    add-int/lit8 v2, v2, 0x1

    goto :goto_261

    .line 185
    :cond_2c7
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_2cc
    .sparse-switch
        0x5978fff -> :sswitch_201
        0x59a8136 -> :sswitch_1f6
        0x6bdcc29 -> :sswitch_1ec
    .end sparse-switch

    :pswitch_data_2da
    .packed-switch 0x0
        :pswitch_245
        :pswitch_229
        :pswitch_210
    .end packed-switch
.end method

.method public static getVideoFaceBeautyDefaultValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    .line 244
    sget-object v0, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "getVideoFaceBeautyDefaultValue"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 245
    const-string v0, "debug.vendor.sys.oobe.camera_skin"

    const-string/jumbo v1, "white"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result p1

    .line 247
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 248
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_22

    move p1, v2

    goto :goto_23

    :cond_22
    move p1, v1

    .line 249
    :goto_23
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    const/4 v4, 0x0

    const-string v5, "   array[i] = "

    const-string v6, "  _key = "

    const-string v7, "key = "

    const-string v8, "i = "

    if-eqz v3, :cond_95

    .line 250
    sget-object v0, Lcom/transsion/camera/utils/SettingInfo$Gender;->MALE:Lcom/transsion/camera/utils/SettingInfo$Gender;

    sget-object v3, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;->D:Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;

    invoke-static {v0, v3, p1, v2, v4}, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConfigManager;->getCameraConfig(Lcom/transsion/camera/utils/SettingInfo$Gender;Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;ZZLjava/util/List;)Ljava/util/List;

    move-result-object p1

    move v0, v1

    .line 251
    :goto_3d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1c7

    .line 252
    sget-object v2, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 253
    sget-object v3, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant;->CUSTOM_KEY_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v0

    .line 254
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 255
    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 256
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_92
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 259
    :cond_95
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableTrueToneV2:Z

    const-string/jumbo v9, "whiten"

    if-eqz v3, :cond_134

    .line 260
    sget-object v0, Lcom/transsion/camera/utils/SettingInfo$Gender;->MALE:Lcom/transsion/camera/utils/SettingInfo$Gender;

    sget-object v3, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;->D:Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;

    invoke-static {v0, v3, p1, v2, v4}, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConfigManager;->getCameraConfig(Lcom/transsion/camera/utils/SettingInfo$Gender;Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;ZZLjava/util/List;)Ljava/util/List;

    move-result-object p1

    move v0, v1

    .line 261
    :goto_a9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1c7

    .line 262
    sget-object v2, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 263
    sget-object v3, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant;->CUSTOM_KEY_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v0

    .line 264
    invoke-static {v3, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f2

    .line 265
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/transsion/camera/app/proxy/portrait/PortraitConstant;->getKeyFromWhitenValue(I)Ljava/lang/String;

    move-result-object v4

    .line 266
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    rem-int/lit8 v10, v10, 0x65

    .line 267
    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f2

    .line 268
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 271
    :cond_f2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 272
    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_130

    .line 273
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_130
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a9

    :cond_134
    if-eqz p1, :cond_139

    .line 277
    sget-object v2, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->VIDEO_FRONT_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

    goto :goto_13b

    :cond_139
    sget-object v2, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->VIDEO_BACK_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

    .line 278
    :goto_13b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "black"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_158

    const-string v3, "brown"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14f

    goto :goto_160

    :cond_14f
    if-eqz p1, :cond_155

    .line 280
    sget-object p1, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->VIDEO_FRONT_CAMERA_BROWN_SKIN_MALE:[Ljava/lang/String;

    :goto_153
    move-object v2, p1

    goto :goto_160

    :cond_155
    sget-object p1, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->VIDEO_BACK_CAMERA_BROWN_SKIN_MALE:[Ljava/lang/String;

    goto :goto_153

    :cond_158
    if-eqz p1, :cond_15d

    .line 283
    sget-object p1, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->VIDEO_FRONT_CAMERA_DARK_SKIN_MALE:[Ljava/lang/String;

    goto :goto_153

    :cond_15d
    sget-object p1, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->VIDEO_BACK_CAMERA_DARK_SKIN_MALE:[Ljava/lang/String;

    goto :goto_153

    :goto_160
    move p1, v1

    .line 288
    :goto_161
    array-length v0, v2

    if-ge p1, v0, :cond_1c7

    .line 289
    sget-object v0, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 290
    sget-object v3, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->CUSTOM_KEY_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, p1

    .line 291
    invoke-static {v3, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19b

    .line 292
    aget-object v4, v2, p1

    invoke-static {v4}, Lcom/transsion/camera/app/proxy/portrait/PortraitConstant;->getKeyFromWhitenValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 293
    aget-object v10, v2, p1

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    rem-int/lit8 v10, v10, 0x65

    .line 294
    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19b

    .line 295
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 298
    :cond_19b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v2, p1

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 299
    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c4

    .line 300
    aget-object p0, v2, p1

    return-object p0

    :cond_1c4
    add-int/lit8 p1, p1, 0x1

    goto :goto_161

    .line 304
    :cond_1c7
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

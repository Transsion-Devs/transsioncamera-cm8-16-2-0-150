.class public Lcom/transsion/camera/feature/mode/vlog/utils/TemplateUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CK_MOMENT_TEMPLATES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/volcengine/ck/moment/base/CKMomentTemplate;",
            ">;"
        }
    .end annotation
.end field

.field public static final CK_MOMENT_WRAP_TEMPLATES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_TemplateUtil"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/utils/TemplateUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/utils/TemplateUtil;->CK_MOMENT_TEMPLATES:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/utils/TemplateUtil;->CK_MOMENT_WRAP_TEMPLATES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTemplateFromAssets(Landroid/content/Context;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;",
            ">;"
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/utils/TemplateUtil;->CK_MOMENT_TEMPLATES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 42
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/utils/TemplateUtil;->CK_MOMENT_WRAP_TEMPLATES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/utils/TemplateUtil;->loadCategoryList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5a

    .line 46
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_5a

    :cond_1c
    const/4 v2, 0x0

    move v3, v2

    .line 50
    :goto_1e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_59

    .line 51
    new-instance v4, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;

    invoke-direct {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;-><init>()V

    .line 52
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cutsame/solution/template/model/TemplateCategory;

    invoke-virtual {v5}, Lcom/cutsame/solution/template/model/TemplateCategory;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;->setId(I)V

    .line 53
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cutsame/solution/template/model/TemplateCategory;

    invoke-virtual {v5}, Lcom/cutsame/solution/template/model/TemplateCategory;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;->setName(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v4, v2}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;->setSource(I)V

    .line 56
    invoke-static {p0, v3}, Lcom/transsion/camera/feature/mode/vlog/utils/TemplateUtil;->loadTemplateItemList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v5

    .line 58
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_53

    .line 59
    invoke-virtual {v4, v5}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;->setItemList(Ljava/util/List;)V

    .line 62
    :cond_53
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_59
    return-object v0

    :cond_5a
    :goto_5a
    const/4 p0, 0x0

    return-object p0
.end method

.method private static loadCategoryList(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/cutsame/solution/template/model/TemplateCategory;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/helper/ResourceHelper;->getAssetTemplateRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "type.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->readAssetJsonFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 71
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/utils/TemplateUtil$1;

    invoke-direct {v1}, Lcom/transsion/camera/feature/mode/vlog/utils/TemplateUtil$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 73
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/utils/TemplateUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadCategoryList, categoryList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method public static loadLocalTemplate(Landroid/content/Context;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;",
            ">;"
        }
    .end annotation

    .line 37
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/utils/TemplateUtil;->getTemplateFromAssets(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static loadTemplateItemList(Landroid/content/Context;I)Ljava/util/List;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;",
            ">;"
        }
    .end annotation

    move/from16 v0, p1

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "template"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->readAssetJsonFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Lcom/transsion/camera/feature/mode/vlog/utils/TemplateUtil$2;

    invoke-direct {v4}, Lcom/transsion/camera/feature/mode/vlog/utils/TemplateUtil$2;-><init>()V

    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_278

    .line 84
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_46

    goto/16 :goto_278

    .line 89
    :cond_46
    sget-object v3, Lcom/transsion/camera/feature/mode/vlog/utils/TemplateUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadTemplateItemList, templateItemList: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 91
    const-string v0, "debug.vendor.sys.oobe.camera_skin"

    const-string v3, "black"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_70
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_261

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/cutsame/solution/template/model/TemplateItem;

    .line 94
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/TemplateInfo;->getTemplateIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/cutsame/solution/template/model/TemplateItem;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9d

    goto :goto_70

    .line 99
    :cond_9d
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v12}, Lcom/cutsame/solution/template/model/TemplateItem;->getExtra()Ljava/lang/String;

    move-result-object v4

    const-class v6, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraListData;

    invoke-virtual {v3, v4, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraListData;

    .line 100
    new-instance v4, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-direct {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;-><init>()V

    .line 101
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 102
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 104
    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraListData;->getExtraDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_111

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraData;

    .line 105
    new-instance v13, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v7}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraData;->getMaterial_id()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraData;->getDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraData;->getVideo_width()I

    move-result v16

    .line 106
    invoke-virtual {v7}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraData;->getVideo_height()I

    move-result v17

    invoke-virtual {v7}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraData;->getDuration()J

    move-result-wide v18

    invoke-virtual {v7}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraData;->getTargetStartTime()Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v20

    invoke-virtual {v7}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraData;->getTargetEndTime()Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v22

    invoke-direct/range {v13 .. v23}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIJJJ)V

    .line 107
    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {v7}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraData;->getDuration()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c5

    :cond_111
    const/4 v3, 0x0

    .line 111
    invoke-virtual {v4, v3}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->setComposeState(I)V

    .line 112
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/helper/ResourceHelper;->getLocalTemplateRootPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/cutsame/solution/template/model/TemplateItem;->getTemplateUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->setTemplateLocalZipPath(Ljava/lang/String;)V

    .line 113
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/helper/ResourceHelper;->getLocalTemplateRootPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v8}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getVideo_height()I

    move-result v8

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v10}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getVideo_width()I

    move-result v10

    if-le v8, v10, :cond_15d

    .line 115
    const-string/jumbo v8, "trailer_portrait.mp4"

    goto :goto_160

    :cond_15d
    const-string/jumbo v8, "trailer_landscape.mp4"

    :goto_160
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 113
    invoke-virtual {v4, v7}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->setLocalEndVideoPath(Ljava/lang/String;)V

    .line 116
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/helper/ResourceHelper;->getAssetTemplateRootPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/cutsame/solution/template/model/TemplateItem;->getVideoInfo()Lcom/cutsame/solution/template/model/UrlModel;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/cutsame/solution/template/model/UrlModel;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->setDemoAssetsPath(Ljava/lang/String;)V

    .line 117
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/helper/ResourceHelper;->getAssetTemplateRootPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/cutsame/solution/template/model/TemplateItem;->getCover()Lcom/cutsame/solution/template/model/Cover;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/cutsame/solution/template/model/Cover;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->setDemoAssetsCoverPath(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v4, v6}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->setVlogMediaItems(Ljava/util/List;)V

    .line 119
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v7}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getVideo_height()I

    move-result v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v6}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getVideo_width()I

    move-result v6

    if-le v7, v6, :cond_1c6

    goto :goto_1c7

    :cond_1c6
    const/4 v3, 0x1

    :goto_1c7
    invoke-virtual {v4, v3}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->setOrientation(I)V

    .line 121
    invoke-virtual {v4, v12}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->setTemplateItem(Lcom/cutsame/solution/template/model/TemplateItem;)V

    .line 122
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {v12}, Lcom/cutsame/solution/template/model/TemplateItem;->getCategory()Ljava/lang/String;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v6, Lcom/transsion/camera/feature/mode/vlog/utils/TemplateUtil$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/transsion/camera/feature/mode/vlog/utils/TemplateUtil$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Ljava/util/List;

    .line 126
    new-instance v13, Lcom/volcengine/ck/moment/base/CKMomentTemplate;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/cutsame/solution/template/model/TemplateItem;->getId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12}, Lcom/cutsame/solution/template/model/TemplateItem;->getCover()Lcom/cutsame/solution/template/model/Cover;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/cutsame/solution/template/model/Cover;->getUrl()Ljava/lang/String;

    move-result-object v15

    .line 127
    invoke-virtual {v12}, Lcom/cutsame/solution/template/model/TemplateItem;->getShortTitle()Ljava/lang/String;

    move-result-object v16

    const-string v17, ""

    const-string v20, ""

    move-object/from16 v18, v9

    invoke-direct/range {v13 .. v20}, Lcom/volcengine/ck/moment/base/CKMomentTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v13, v12}, Lcom/volcengine/ck/moment/base/CKMomentTemplate;->setAny(Ljava/lang/Object;)V

    .line 129
    sget-object v3, Lcom/transsion/camera/feature/mode/vlog/utils/TemplateUtil;->CK_MOMENT_TEMPLATES:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v4

    .line 131
    new-instance v4, Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/cutsame/solution/template/model/TemplateItem;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Lcom/cutsame/solution/template/model/TemplateItem;->getCover()Lcom/cutsame/solution/template/model/Cover;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/cutsame/solution/template/model/Cover;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 132
    invoke-virtual {v12}, Lcom/cutsame/solution/template/model/TemplateItem;->getShortTitle()Ljava/lang/String;

    move-result-object v7

    const-string v11, ""

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getOrientation()I

    move-result v13

    const-string v8, ""

    move-object/from16 v10, v19

    invoke-direct/range {v4 .. v13}, Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/cutsame/solution/template/model/TemplateItem;I)V

    .line 133
    sget-object v3, Lcom/transsion/camera/feature/mode/vlog/utils/TemplateUtil;->CK_MOMENT_WRAP_TEMPLATES:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_70

    .line 136
    :cond_261
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/utils/TemplateUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadTemplateItemList, templateItemDataList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 85
    :cond_278
    :goto_278
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/utils/TemplateUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "loadTemplateItemList, no template from json"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1
.end method

.class public Lcom/transsion/camera/app/common/provider/SettingUIProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sCachedEntryClasses:Ljava/util/List;


# instance fields
.field private final mAllEntries:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SettingUIProvider"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->sCachedEntryClasses:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->mAllEntries:Landroid/util/ArrayMap;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->loadUIEntries(Landroid/content/Context;I)V

    return-void
.end method

.method public static cacheAllEntryClasses([Ljava/lang/String;)V
    .registers 2

    .line 290
    sget-object v0, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->sCachedEntryClasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 291
    invoke-static {p0}, Lcom/transsion/camera/utils/ReflectionUtils;->cacheClasses([Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private loadBuildInUIEntries(Landroid/content/Context;I)Landroid/util/ArrayMap;
    .registers 4

    .line 250
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 251
    sget-object p1, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->sCachedEntryClasses:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_11

    .line 252
    invoke-static {p1, p0}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->loadClasses(Ljava/util/List;Landroid/content/res/Resources;)Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0

    .line 254
    :cond_11
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 255
    invoke-static {p1, p0}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->loadClasses([Ljava/lang/String;Landroid/content/res/Resources;)Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method private static loadClasses(Ljava/util/List;Landroid/content/res/Resources;)Landroid/util/ArrayMap;
    .registers 5

    .line 276
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 277
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-eqz v1, :cond_d

    .line 279
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;

    if-eqz v1, :cond_d

    .line 281
    invoke-interface {v1}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 282
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_2f
    return-object v0
.end method

.method private static loadClasses([Ljava/lang/String;Landroid/content/res/Resources;)Landroid/util/ArrayMap;
    .registers 7

    .line 261
    new-instance v0, Landroid/util/ArrayMap;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 262
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_24

    aget-object v3, p0, v2

    if-eqz v3, :cond_21

    .line 264
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;

    if-eqz v3, :cond_21

    .line 266
    invoke-interface {v3}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 267
    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_24
    return-object v0
.end method

.method private loadUIEntries(Landroid/content/Context;I)V
    .registers 4

    .line 242
    const-string v0, "SettingUIProvider loadUIEntries"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 243
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->loadBuildInUIEntries(Landroid/content/Context;I)Landroid/util/ArrayMap;

    move-result-object p1

    .line 244
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->mAllEntries:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 245
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method


# virtual methods
.method public createPreferenceItemUIList([Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 12

    if-eqz p1, :cond_89

    .line 166
    array-length v0, p1

    if-nez v0, :cond_7

    goto/16 :goto_89

    .line 169
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    const-string v4, "createPreferenceItemUIList entry is null: "

    if-ge v3, v1, :cond_50

    aget-object v5, p1, v3

    .line 171
    iget-object v6, p0, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->mAllEntries:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;

    if-eqz v6, :cond_39

    .line 172
    invoke-interface {v6}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->isSupported()Z

    move-result v7

    if-eqz v7, :cond_39

    .line 173
    invoke-interface {v6}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->createPreferenceItemUI()Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    move-result-object v4

    if-eqz v4, :cond_4d

    .line 175
    invoke-interface {p3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    const/4 v5, 0x1

    .line 176
    invoke-interface {v4, v5}, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;->setIsSellingPoint(Z)V

    .line 178
    :cond_35
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    .line 181
    :cond_39
    sget-object v6, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_4d
    :goto_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_50
    if-eqz p2, :cond_88

    .line 185
    array-length p1, p2

    :goto_53
    if-ge v2, p1, :cond_88

    aget-object p3, p2, v2

    .line 186
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->mAllEntries:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;

    if-eqz v1, :cond_71

    .line 187
    invoke-interface {v1}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_71

    .line 188
    invoke-interface {v1}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->createPreferenceItemUI()Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    move-result-object p3

    if-eqz p3, :cond_85

    .line 190
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_85

    .line 193
    :cond_71
    sget-object v1, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_85
    :goto_85
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    :cond_88
    return-object v0

    .line 167
    :cond_89
    :goto_89
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public createSettingGuideItemUI(Ljava/lang/String;)Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;
    .registers 2

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->mAllEntries:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;

    if-eqz p0, :cond_f

    .line 236
    invoke-interface {p0}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->createSettingGuideItemUI()Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public createSettingGuideItemUIList([Ljava/lang/String;)Ljava/util/List;
    .registers 7

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_27

    aget-object v3, p1, v2

    .line 222
    iget-object v4, p0, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->mAllEntries:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;

    if-eqz v3, :cond_24

    .line 223
    invoke-interface {v3}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 224
    invoke-interface {v3}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->createSettingGuideItemUI()Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 226
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_27
    return-object v0
.end method

.method public createSettingUISpecList([Ljava/lang/String;)Ljava/util/List;
    .registers 9

    if-eqz p1, :cond_3f

    .line 201
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_3f

    .line 204
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    array-length v1, p1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_3e

    aget-object v3, p1, v2

    .line 206
    iget-object v4, p0, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->mAllEntries:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;

    if-eqz v4, :cond_25

    .line 208
    invoke-interface {v4}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->createSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object v3

    if-eqz v3, :cond_3b

    .line 210
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 213
    :cond_25
    sget-object v4, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createSettingUISpecList entry is null: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3b
    :goto_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_3e
    return-object v0

    .line 202
    :cond_3f
    :goto_3f
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public createWideCameraItemUIList([Ljava/lang/String;)Ljava/util/List;
    .registers 9

    if-eqz p1, :cond_3f

    .line 146
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_3f

    .line 149
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    array-length v1, p1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_3e

    aget-object v3, p1, v2

    .line 151
    iget-object v4, p0, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->mAllEntries:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;

    if-eqz v4, :cond_25

    .line 153
    invoke-interface {v4}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->createWideCameraItemUI()Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    move-result-object v3

    if-eqz v3, :cond_3b

    .line 155
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 158
    :cond_25
    sget-object v4, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createWideCameraItemUIList entry is null: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3b
    :goto_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_3e
    return-object v0

    .line 147
    :cond_3f
    :goto_3f
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getCommonSettingUI(Ljava/lang/String;)Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;
    .registers 4

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->mAllEntries:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;

    if-eqz p0, :cond_1c

    .line 54
    invoke-interface {p0}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 55
    invoke-interface {p0}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->getCommonUI()Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    move-result-object p1

    if-nez p1, :cond_1b

    .line 57
    invoke-interface {p0}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->createCommonUI()Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    move-result-object p0

    return-object p0

    :cond_1b
    return-object p1

    .line 61
    :cond_1c
    sget-object p0, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCommonSettingUIList entry is null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCommonSettingUIList([Ljava/lang/String;)Ljava/util/List;
    .registers 9

    if-eqz p1, :cond_4b

    .line 67
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_4b

    .line 70
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    array-length v1, p1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_4a

    aget-object v3, p1, v2

    .line 72
    iget-object v4, p0, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->mAllEntries:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;

    if-eqz v4, :cond_31

    .line 73
    invoke-interface {v4}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->isSupported()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 74
    invoke-interface {v4}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->getCommonUI()Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    move-result-object v3

    if-nez v3, :cond_2b

    .line 77
    invoke-interface {v4}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->createCommonUI()Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    move-result-object v3

    :cond_2b
    if-eqz v3, :cond_47

    .line 80
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 83
    :cond_31
    sget-object v4, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCommonSettingUIList entry is null: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_47
    :goto_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_4a
    return-object v0

    .line 68
    :cond_4b
    :goto_4b
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getPopSettingItemUIList([Ljava/lang/String;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Ljava/util/List;
    .registers 11

    if-eqz p1, :cond_64

    .line 118
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_64

    .line 121
    :cond_6
    const-string v0, "SettingUIProvider getPopSettingItemUIList"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    array-length v1, p1

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_60

    aget-object v3, p1, v2

    .line 124
    iget-object v4, p0, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->mAllEntries:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;

    if-eqz v4, :cond_47

    .line 125
    invoke-interface {v4}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->isSupported()Z

    move-result v5

    if-eqz v5, :cond_47

    .line 126
    invoke-interface {v4}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->getPopSettingItemUI()Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    move-result-object v5

    if-nez v5, :cond_41

    .line 128
    invoke-interface {v4}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->createPopSettingItemUI()Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    move-result-object v5

    if-eqz v5, :cond_41

    if-eqz p2, :cond_41

    .line 129
    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    const/4 v3, 0x1

    .line 130
    invoke-interface {v5, v3}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->setIsSellingPoint(Z)V

    .line 131
    invoke-interface {v5, p3}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->setPointRes(Landroid/graphics/drawable/Drawable;)V

    :cond_41
    if-eqz v5, :cond_5d

    .line 135
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 138
    :cond_47
    sget-object v4, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPopSettingItemUIList entry is null: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_5d
    :goto_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 141
    :cond_60
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-object v0

    .line 119
    :cond_64
    :goto_64
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getTopBarItemUIList([Ljava/lang/String;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Ljava/util/List;
    .registers 11

    if-eqz p1, :cond_62

    .line 90
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_62

    .line 93
    :cond_6
    const-string v0, "SettingUIProvider getTopBarItemUIList"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    array-length v1, p1

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_5e

    aget-object v3, p1, v2

    .line 96
    iget-object v4, p0, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->mAllEntries:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;

    if-eqz v4, :cond_45

    .line 97
    invoke-interface {v4}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->isSupported()Z

    move-result v5

    if-eqz v5, :cond_45

    .line 98
    invoke-interface {v4}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->getTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    move-result-object v5

    if-nez v5, :cond_3f

    .line 100
    invoke-interface {v4}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->createTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    move-result-object v5

    if-eqz p2, :cond_3f

    .line 101
    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    const/4 v3, 0x1

    .line 102
    invoke-interface {v5, v3}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setIsSellingPoint(Z)V

    .line 103
    invoke-interface {v5, p3}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setPointRes(Landroid/graphics/drawable/Drawable;)V

    :cond_3f
    if-eqz v5, :cond_5b

    .line 107
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 110
    :cond_45
    sget-object v4, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTopBarItemUIList entry is null: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_5b
    :goto_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 113
    :cond_5e
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-object v0

    .line 91
    :cond_62
    :goto_62
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public resetSettingUIEntries()V
    .registers 2

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->mAllEntries:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;

    if-eqz v0, :cond_a

    .line 47
    invoke-interface {v0}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->resetSettingUIEntry()V

    goto :goto_a

    :cond_1c
    return-void
.end method

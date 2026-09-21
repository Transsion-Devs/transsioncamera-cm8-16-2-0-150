.class public Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/SettingItemUIProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sCachedEntryClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mAllEntries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUIEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SettingItemUIProvider"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/SettingItemUIProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/SettingItemUIProvider;->sCachedEntryClasses:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/SettingItemUIProvider;->mAllEntries:Landroid/util/ArrayMap;

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/SettingItemUIProvider;->mResources:Landroid/content/res/Resources;

    .line 36
    sget-object p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/SettingItemUIProvider;->sCachedEntryClasses:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 37
    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/SettingItemUIProvider;->loadClasses(Ljava/util/List;Landroid/content/res/Resources;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    return-void

    .line 39
    :cond_1c
    sget p0, Lcom/transsion/camera/feature/aiartmuseum/R$array;->ai_art_museum_item_ui_entries:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 40
    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/SettingItemUIProvider;->loadClasses([Ljava/lang/String;Landroid/content/res/Resources;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    return-void
.end method

.method private static loadClasses(Ljava/util/List;Landroid/content/res/Resources;)Landroid/util/ArrayMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Landroid/content/res/Resources;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUIEntry;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 62
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

    .line 64
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUIEntry;

    if-eqz v1, :cond_d

    .line 66
    invoke-interface {v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUIEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_2f
    return-object v0
.end method

.method private static loadClasses([Ljava/lang/String;Landroid/content/res/Resources;)Landroid/util/ArrayMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUIEntry;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Landroid/util/ArrayMap;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 47
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_24

    aget-object v3, p0, v2

    if-eqz v3, :cond_21

    .line 49
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUIEntry;

    if-eqz v3, :cond_21

    .line 51
    invoke-interface {v3}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUIEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 52
    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_24
    return-object v0
.end method


# virtual methods
.method public createSettingItemUIList()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUI;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/SettingItemUIProvider;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/aiartmuseum/R$array;->ai_art_museum_item_ui_entries:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 76
    array-length v1, v0

    if-nez v1, :cond_18

    .line 77
    sget-object p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/SettingItemUIProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "config error, ai_art_museum_item_ui_entries is empty"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 78
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 80
    :cond_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v2, :cond_50

    aget-object v4, v0, v3

    .line 82
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/SettingItemUIProvider;->mAllEntries:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUIEntry;

    if-eqz v5, :cond_37

    .line 84
    invoke-interface {v5}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUIEntry;->createItemUI()Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUI;

    move-result-object v4

    if-eqz v4, :cond_4d

    .line 86
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    .line 89
    :cond_37
    sget-object v5, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/SettingItemUIProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createSettingItemUIList entry is null: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_4d
    :goto_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_50
    return-object v1
.end method

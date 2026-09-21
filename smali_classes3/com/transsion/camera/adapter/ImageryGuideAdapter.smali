.class public final enum Lcom/transsion/camera/adapter/ImageryGuideAdapter;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/adapter/ImageryGuideAdapter;

.field public static final enum INSTANCE:Lcom/transsion/camera/adapter/ImageryGuideAdapter;


# instance fields
.field private final mUIManagers:Ljava/util/Map;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/adapter/ImageryGuideAdapter;
    .registers 1

    .line 13
    sget-object v0, Lcom/transsion/camera/adapter/ImageryGuideAdapter;->INSTANCE:Lcom/transsion/camera/adapter/ImageryGuideAdapter;

    filled-new-array {v0}, [Lcom/transsion/camera/adapter/ImageryGuideAdapter;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 14
    new-instance v0, Lcom/transsion/camera/adapter/ImageryGuideAdapter;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/adapter/ImageryGuideAdapter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/adapter/ImageryGuideAdapter;->INSTANCE:Lcom/transsion/camera/adapter/ImageryGuideAdapter;

    .line 13
    invoke-static {}, Lcom/transsion/camera/adapter/ImageryGuideAdapter;->$values()[Lcom/transsion/camera/adapter/ImageryGuideAdapter;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/adapter/ImageryGuideAdapter;->$VALUES:[Lcom/transsion/camera/adapter/ImageryGuideAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/adapter/ImageryGuideAdapter;->mUIManagers:Ljava/util/Map;

    return-void
.end method

.method private varargs createImageryGuideManagerFactory(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 33
    const-class p0, Lcom/transsion/camera/manager/BaseImageryGuideManagerFactory;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 34
    const-string p0, "com.transsion.camera.feature.imageryguide.ImageryGuideManagerFactory"

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 36
    :cond_f
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createUI5ManagerFactory: class not found for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/adapter/ImageryGuideAdapter;
    .registers 2

    .line 13
    const-class v0, Lcom/transsion/camera/adapter/ImageryGuideAdapter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/ImageryGuideAdapter;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/adapter/ImageryGuideAdapter;
    .registers 1

    .line 13
    sget-object v0, Lcom/transsion/camera/adapter/ImageryGuideAdapter;->$VALUES:[Lcom/transsion/camera/adapter/ImageryGuideAdapter;

    invoke-virtual {v0}, [Lcom/transsion/camera/adapter/ImageryGuideAdapter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/adapter/ImageryGuideAdapter;

    return-object v0
.end method


# virtual methods
.method public varargs getHelpGuideManagerFactory(Ljava/lang/Class;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 20
    iget-object v0, p0, Lcom/transsion/camera/adapter/ImageryGuideAdapter;->mUIManagers:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_27

    .line 22
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsSupportImageryGuide:Z

    if-eqz v0, :cond_19

    .line 23
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/adapter/ImageryGuideAdapter;->createImageryGuideManagerFactory(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1d

    .line 25
    :cond_19
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    .line 27
    :goto_1d
    iget-object p0, p0, Lcom/transsion/camera/adapter/ImageryGuideAdapter;->mUIManagers:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_27
    return-object v0
.end method

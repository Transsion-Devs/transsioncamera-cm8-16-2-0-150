.class public Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager$TranActivityControllerExt;
    }
.end annotation


# static fields
.field public static final APP_LOCK_PACKAGE:Ljava/lang/String; = "com.transsion.applock"

.field public static final FACEBOOKMESSAGE:Ljava/lang/String; = "com.facebook.orca"

.field public static final NORMAL_ID:I = 0x0

.field public static final SPLIT_SCREEN_PKG:Ljava/lang/String; = "com.transsion.splitscreen"

.field private static final TAG:Ljava/lang/String; = "TranAospActivityTaskManager"

.field public static final TWIN_ID:I = 0x3e7

.field public static final WINDOWING_MODE:I = 0x5

.field public static final WINDOWING_MODE_DEF:I = -0x2

.field public static final WINDOWING_MODE_FREEFORM:I = 0x5

.field public static final WINDOWING_MODE_FULLSCREEN:I = 0x1

.field public static final WINDOWING_MODE_MULTI_WINDOW:I = 0x6

.field public static final WINDOWING_MODE_PINNED:I = 0x2

.field private static sActivityManagerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sClassNameStub:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sManagerClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sMaxRecentTasks:I

.field private static sTaskSnapshotClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivityTaskExt:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt;

.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/transsion/hubsdk/api/app/ITranActivityController;

.field private final mObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    const-string v0, "android.app.ActivityTaskManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClassName:Ljava/lang/Class;

    .line 44
    const-string v0, "android.app.IActivityTaskManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    .line 45
    const-string v0, "android.app.ActivityManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sActivityManagerClass:Ljava/lang/Class;

    .line 46
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sManagerClassName:Ljava/lang/Class;

    .line 47
    const-string v0, "android.app.IActivityTaskManager$Stub"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClassNameStub:Ljava/lang/Class;

    .line 48
    const-string v0, "android.window.TaskSnapshot"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sTaskSnapshotClass:Ljava/lang/Class;

    const/4 v0, -0x1

    .line 68
    sput v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sMaxRecentTasks:I

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mContext:Landroid/content/Context;

    .line 74
    new-instance v1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt;

    invoke-direct {v1, v0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mActivityTaskExt:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt;

    .line 75
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClassName:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getService"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    .line 76
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;)Lcom/transsion/hubsdk/api/app/ITranActivityController;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mController:Lcom/transsion/hubsdk/api/app/ITranActivityController;

    return-object p0
.end method

.method private getAllRootTaskInfosList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 826
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 827
    const-string v0, "android.app.IActivityManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 828
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/app/ActivityManager;

    const-string v4, "getService"

    invoke-static {v3, v4, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 829
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 832
    const-string v2, "getAllRootTaskInfos"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-static {v0, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 836
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 837
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 838
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_3d

    .line 839
    check-cast p0, Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3d
    return-object v0
.end method

.method private getChildTaskNamesField(Ljava/lang/Object;)Ljava/lang/reflect/Field;
    .registers 2

    .line 865
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "childTaskNames"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method private getConfiguration(Ljava/lang/Object;)Landroid/content/res/Configuration;
    .registers 3

    .line 681
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "configuration"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 683
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 684
    instance-of p1, p0, Landroid/content/res/Configuration;

    if-eqz p1, :cond_15

    .line 685
    check-cast p0, Landroid/content/res/Configuration;

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method private getRealClassMode(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 4

    .line 788
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getStackInfoClsName(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->isStackInfoTopClassName(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method private getRootTaskInfoClass()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 851
    const-string p0, "android.app.TaskInfo"

    invoke-static {p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private getRunningTaskInfoConfiguration(Ljava/lang/Object;)Landroid/content/res/Configuration;
    .registers 4

    .line 796
    :try_start_0
    const-string p0, "android.app.ActivityManager$RunningTaskInfo"

    invoke-static {p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 797
    const-string v0, "configuration"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 798
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/Configuration;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    move-exception p0

    .line 800
    sget-object p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRunningTaskInfoConfiguration, exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getStackInfoClsName(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    .line 749
    :try_start_1
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getChildTaskNamesField(Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 750
    const-string p1, ""

    if-eqz p0, :cond_47

    .line 751
    array-length v1, p0

    if-lez v1, :cond_47

    .line 752
    array-length v1, p0

    move v2, v0

    :goto_14
    if-ge v2, v1, :cond_47

    aget-object v3, p0, v2

    .line 753
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 754
    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_27

    .line 755
    aget-object p1, v3, v5

    goto :goto_27

    :catch_25
    move-exception p0

    goto :goto_31

    .line 757
    :cond_27
    :goto_27
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_25

    if-eqz v3, :cond_2e

    return v5

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 763
    :goto_31
    sget-object p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStackInfoClsName, exception: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    return v0
.end method

.method private getStackInfoPackageName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    .line 732
    :try_start_0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getChildTaskNamesField(Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 733
    const-string p1, ""

    .line 734
    array-length v0, p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_30

    const-string v1, "/"

    const/4 v2, 0x0

    if-lez v0, :cond_1a

    .line 735
    :try_start_12
    aget-object p1, p0, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v2

    .line 737
    :cond_1a
    const-string v0, "com.transsion.splitscreen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    array-length v0, p0

    const/4 v3, 0x1

    if-le v0, v3, :cond_2f

    .line 738
    aget-object p0, p0, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v2
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2e} :catch_30

    return-object p0

    :cond_2f
    return-object p1

    :catch_30
    move-exception p0

    .line 742
    sget-object p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStackInfoPackageName, exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getStackInfoTopPackageName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 722
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "topActivity"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 723
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    if-eqz p0, :cond_17

    .line 725
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 727
    :cond_17
    const-string p0, ""

    return-object p0
.end method

.method private getTaskId(Ljava/lang/Object;)I
    .registers 3

    .line 649
    const-string p0, "android.app.ActivityTaskManager$RootTaskInfo"

    invoke-static {p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 650
    const-string v0, "childTaskIds"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 655
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 p1, 0x0

    .line 656
    aget p0, p0, p1

    return p0
.end method

.method private getTaskInfoDisplayId(Ljava/lang/Object;)I
    .registers 3

    .line 691
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getRootTaskInfoClass()Ljava/lang/Class;

    move-result-object p0

    .line 692
    const-string v0, "displayId"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 693
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 695
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_19

    .line 696
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method private static getWindowConfiguration(Landroid/content/res/Configuration;)Ljava/lang/Object;
    .registers 4

    .line 672
    :try_start_0
    const-class v0, Landroid/content/res/Configuration;

    const-string v1, "windowConfiguration"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 673
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 675
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWindowConfiguration, Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getWindowingMode(Ljava/lang/Object;)I
    .registers 5

    .line 660
    const-string v0, "android.app.WindowConfiguration"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 661
    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getWindowingMode"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 662
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 664
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_20

    .line 665
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_20
    return v1
.end method

.method private isGivenStackInfoPackageName(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    .line 770
    :try_start_1
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getChildTaskNamesField(Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 771
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    if-eqz p0, :cond_40

    .line 773
    array-length p1, p0

    if-lez p1, :cond_40

    .line 774
    array-length p1, p0

    move v1, v0

    :goto_12
    if-ge v1, p1, :cond_40

    aget-object v2, p0, v1

    .line 775
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    .line 776
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_29

    if-eqz v2, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :catch_29
    move-exception p0

    .line 782
    sget-object p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isGivenStackInfoPackageName, exception: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    return v0
.end method

.method private isStackInfoTopClassName(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 5

    .line 703
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getRootTaskInfoClass()Ljava/lang/Class;

    move-result-object p0

    .line 704
    const-string v0, "topActivity"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 705
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    .line 706
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    return v1

    .line 710
    :cond_1e
    const-string v0, "realActivity"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 711
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    if-eqz p0, :cond_52

    .line 712
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_37

    if-eqz p0, :cond_52

    return v1

    :catch_37
    move-exception p0

    .line 716
    sget-object p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getStackInfoTopClassName, Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public activityInMultiWindow(Ljava/lang/String;)Z
    .registers 5

    .line 190
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "activityInMultiWindow"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 191
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 193
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_23

    .line 194
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public addAnimationIconLayer(Landroid/view/SurfaceControl;)V
    .registers 5

    .line 1090
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Landroid/view/SurfaceControl;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "addAnimationIconLayer"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1091
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public boostEndInLauncher(I)V
    .registers 5

    .line 1380
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "boostEndInLauncher"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1381
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_1f

    .line 1382
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-void
.end method

.method public boostSceneEnd(I)V
    .registers 5

    .line 1134
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "boostSceneEnd"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1135
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public boostSceneStart(I)V
    .registers 5

    .line 913
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "boostSceneStart"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 914
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public boostStartInLauncher(I)V
    .registers 5

    .line 1372
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "boostStartInLauncher"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1373
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_1f

    .line 1374
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-void
.end method

.method public checkAndUpdateEventStateForMulti(Ljava/lang/String;ZZJ)Z
    .registers 10

    .line 1298
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    filled-new-array {v3, v1, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "checkAndUpdateEventStateForMulti"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 1299
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_33

    .line 1300
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_33
    const/4 p0, 0x1

    return p0
.end method

.method public checkTaskCanEnterMultiWin(I)Z
    .registers 5

    .line 1520
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "checkTaskCanEnterMultiWin"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1521
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_24

    .line 1522
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_24
    const/4 p0, 0x1

    return p0
.end method

.method public clearFinishFixedRotationWithTransaction()V
    .registers 5

    .line 919
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "clearFinishFixedRotationWithTransaction"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 920
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearMultiWindowExtendSize(I)V
    .registers 5

    .line 1440
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "clearMultiWindowExtendSize"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1441
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_1f

    .line 1442
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-void
.end method

.method public getAllMultiWindowPackageInfo()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1529
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getAllMultiWindowPackageInfo"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1530
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_1a

    .line 1531
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 1533
    :cond_1a
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getAllMultiWindowTaskInfo()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 1289
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getAllMultiWindowTaskInfo"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1291
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllRootTaskInfosOnDisplay(I)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;",
            ">;"
        }
    .end annotation

    .line 1205
    const-string v0, "android.app.ActivityTaskManager$RootTaskInfo"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1206
    sget-object v1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getAllRootTaskInfosOnDisplay"

    invoke-static {v1, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1207
    iget-object v2, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1209
    instance-of v2, p1, Ljava/util/List;

    if-eqz v2, :cond_4d

    .line 1210
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_31
    :goto_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1211
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1212
    invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 1217
    :cond_4d
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1218
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_57
    if-ge v3, v2, :cond_132

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    .line 1219
    invoke-virtual {v0, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 1220
    sget-object v5, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    const-string v6, "RootTaskInfo"

    invoke-static {v5, v6}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :cond_6c
    :try_start_6c
    new-instance v5, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;

    invoke-direct {v5}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;-><init>()V

    .line 1225
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getRootTaskInfoClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "topActivity"

    invoke-static {v6, v7}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 1226
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 1227
    invoke-virtual {v5, v6}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setTopActivity(Landroid/content/ComponentName;)V

    .line 1229
    const-string v6, "bounds"

    invoke-static {v0, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 1230
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setBounds(Landroid/graphics/Rect;)V

    .line 1232
    const-string v6, "childTaskIds"

    invoke-static {v0, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 1233
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    invoke-virtual {v5, v6}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setChildTaskIds([I)V

    .line 1235
    const-string v6, "childTaskNames"

    invoke-static {v0, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 1236
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setChildTaskNames([Ljava/lang/String;)V

    .line 1238
    const-string v6, "childTaskBounds"

    invoke-static {v0, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 1239
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setChildTaskBounds([Landroid/graphics/Rect;)V

    .line 1241
    const-string v6, "childTaskUserIds"

    invoke-static {v0, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 1242
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    invoke-virtual {v5, v6}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setChildTaskUserIds([I)V

    .line 1244
    const-string v6, "visible"

    invoke-static {v0, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 1245
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setVisible(Z)V

    .line 1247
    const-string v6, "position"

    invoke-static {v0, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 1248
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setPosition(I)V

    .line 1250
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getRootTaskInfoClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "configuration"

    invoke-static {v6, v7}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 1251
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/Configuration;

    .line 1252
    invoke-static {v6}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getWindowConfiguration(Landroid/content/res/Configuration;)Ljava/lang/Object;

    move-result-object v6

    .line 1253
    invoke-static {v6}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getWindowingMode(Ljava/lang/Object;)I

    move-result v6

    .line 1254
    invoke-virtual {v5, v6}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setWindowingMode(I)V

    .line 1256
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getRootTaskInfoClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "taskId"

    invoke-static {v6, v7}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 1257
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setTaskId(I)V

    .line 1259
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_118} :catch_11a

    goto/16 :goto_57

    .line 1261
    :catch_11a
    sget-object v5, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RootTaskInfo fail:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_57

    :cond_132
    return-object p1
.end method

.method public getDefaultRootLeash()Landroid/view/SurfaceControl;
    .registers 5

    .line 925
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getDefaultRootLeash"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 926
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 928
    instance-of v0, p0, Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1a

    .line 929
    check-cast p0, Landroid/view/SurfaceControl;

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDragAndZoomBgLeash(IIIIZ)Landroid/view/SurfaceControl;
    .registers 9

    .line 936
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v1, v1, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getDragAndZoomBgLeash"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 937
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    filled-new-array {p1, p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 939
    instance-of p1, p0, Landroid/view/SurfaceControl;

    if-eqz p1, :cond_35

    .line 940
    check-cast p0, Landroid/view/SurfaceControl;

    return-object p0

    :cond_35
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFocusedWinPkgName()Ljava/lang/String;
    .registers 5

    .line 120
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getFocusedWinPkgName"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 121
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 123
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 124
    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGivenPkgWindowMode(Ljava/lang/String;)I
    .registers 6

    const/4 v0, -0x2

    .line 431
    :try_start_1
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getAllRootTaskInfosList()Ljava/util/List;

    move-result-object v1

    .line 432
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 433
    invoke-direct {p0, v2, p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->isGivenStackInfoPackageName(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_26

    invoke-direct {p0, v2}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getStackInfoTopPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_26

    :catch_24
    move-exception p0

    goto :goto_4d

    .line 434
    :cond_26
    :goto_26
    invoke-direct {p0, v2}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getConfiguration(Ljava/lang/Object;)Landroid/content/res/Configuration;

    move-result-object p0

    if-eqz p0, :cond_4c

    .line 436
    invoke-static {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getWindowConfiguration(Landroid/content/res/Configuration;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4c

    .line 438
    invoke-static {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getWindowingMode(Ljava/lang/Object;)I

    move-result v0

    .line 439
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mode = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4c} :catch_24

    :cond_4c
    return v0

    .line 446
    :goto_4d
    sget-object p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGivenPkgWindowMode, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getGivenPkgWindowModeForCls(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    const/4 v0, -0x2

    .line 461
    :try_start_1
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getAllRootTaskInfosList()Ljava/util/List;

    move-result-object v1

    .line 462
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 463
    invoke-direct {p0, v2, p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->isGivenStackInfoPackageName(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_26

    invoke-direct {p0, v2}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getStackInfoTopPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_26

    :catch_24
    move-exception p0

    goto :goto_5b

    .line 464
    :cond_26
    :goto_26
    invoke-direct {p0, v2, p2}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getRealClassMode(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 465
    invoke-direct {p0, v2}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getConfiguration(Ljava/lang/Object;)Landroid/content/res/Configuration;

    move-result-object p0

    if-eqz p0, :cond_5a

    .line 467
    invoke-static {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getWindowConfiguration(Landroid/content/res/Configuration;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5a

    .line 469
    invoke-static {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getWindowingMode(Ljava/lang/Object;)I

    move-result v0

    .line 470
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mode = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " clsname = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5a} :catch_24

    :cond_5a
    return v0

    .line 477
    :goto_5b
    sget-object p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getGivenPkgWindowModeForCls, exception: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getHardwareBuffer(IZ)Landroid/hardware/HardwareBuffer;
    .registers 5

    .line 588
    sget-object p2, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getTaskSnapshot"

    invoke-static {p2, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 589
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 593
    const-string p1, "android.window.TaskSnapshot"

    invoke-static {p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 p2, 0x0

    .line 594
    new-array v0, p2, [Ljava/lang/Class;

    const-string v1, "getHardwareBuffer"

    invoke-static {p1, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 595
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p0, p2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 596
    instance-of p1, p0, Landroid/hardware/HardwareBuffer;

    if-eqz p1, :cond_3c

    .line 597
    check-cast p0, Landroid/hardware/HardwareBuffer;

    return-object p0

    :cond_3c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMaxRecentTasksStatic()I
    .registers 4

    .line 307
    sget p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sMaxRecentTasks:I

    if-gez p0, :cond_2a

    .line 308
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sActivityManagerClass:Ljava/lang/Class;

    const-string v0, "isLowRamDeviceStatic"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-static {p0, v0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 310
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sActivityManagerClass:Ljava/lang/Class;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 311
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_21

    .line 312
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_21
    if-eqz v1, :cond_26

    const/16 p0, 0x24

    goto :goto_28

    :cond_26
    const/16 p0, 0x30

    .line 314
    :goto_28
    sput p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sMaxRecentTasks:I

    .line 316
    :cond_2a
    sget p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sMaxRecentTasks:I

    return p0
.end method

.method public getMultiDisplayAreaTopPackageV4(II)Ljava/lang/String;
    .registers 6

    .line 947
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getMultiDisplayAreaTopPackageV4"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 948
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 950
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_27

    .line 951
    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMultiWinTopTask(II)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 6

    .line 958
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getMultiWinTopTask"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 959
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 961
    instance-of p1, p0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p1, :cond_27

    .line 962
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMultiWindowBlackList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 223
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getMultiWindowBlackList"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 224
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_38

    .line 227
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 228
    const-class v2, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_38
    return-object v0
.end method

.method public getMultiWindowDefaultRect()Landroid/graphics/Rect;
    .registers 5

    .line 1355
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getMultiWindowDefaultRect"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1356
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_1a

    .line 1357
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMultiWindowParams(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5

    .line 634
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getMultiWindowParams"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 635
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 637
    instance-of p1, p0, Landroid/os/Bundle;

    if-eqz p1, :cond_1f

    .line 638
    check-cast p0, Landroid/os/Bundle;

    return-object p0

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMultiWindowVersion()Ljava/lang/String;
    .registers 5

    .line 212
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getMultiWindowVersion"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 213
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 215
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 216
    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMuteStateV4(I)Z
    .registers 5

    .line 969
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getMuteStateV4"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 970
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 972
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_27

    .line 973
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public getNeedExit(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    .line 518
    :try_start_1
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getAllRootTaskInfosList()Ljava/util/List;

    move-result-object v1

    .line 519
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 520
    invoke-direct {p0, v2}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getStackInfoPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "com.transsion.applock"

    .line 521
    invoke-direct {p0, v2}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getStackInfoTopPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_2b

    if-eqz v2, :cond_9

    const/4 p0, 0x1

    return p0

    :catch_2b
    move-exception p0

    goto :goto_2e

    :cond_2d
    return v0

    .line 527
    :goto_2e
    sget-object p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNeedExit, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getNotifyMultiWindowBlackList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1511
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getNotifyMultiWindowBlackList"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1512
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_1a

    .line 1513
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackageUserId(Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    .line 567
    :try_start_1
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getAllRootTaskInfosList()Ljava/util/List;

    move-result-object v1

    .line 568
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 569
    invoke-direct {p0, v2}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getStackInfoPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 570
    invoke-virtual {p0, v2}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getUserId(Ljava/lang/Object;)I

    move-result p0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_22

    return p0

    :catch_22
    move-exception p0

    goto :goto_25

    :cond_24
    return v0

    .line 575
    :goto_25
    sget-object p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPackageUserId, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getRecentTasks(III)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 80
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getRecentTasks"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 81
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 82
    const-string p1, "android.content.pm.ParceledListSlice"

    invoke-static {p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 p2, 0x0

    .line 83
    new-array p3, p2, [Ljava/lang/Class;

    const-string v0, "getList"

    invoke-static {p1, v0, p3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 84
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p0, p2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 85
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    instance-of p2, p0, Ljava/util/List;

    if-eqz p2, :cond_5e

    .line 87
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_48
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 88
    const-class p3, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_48

    :cond_5e
    return-object p1
.end method

.method public getRootTaskInfoOnDisplay(III)Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;
    .registers 8

    const/4 v0, 0x0

    .line 878
    :try_start_1
    sget-object v1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-string v2, "getRootTaskInfoOnDisplay"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v3, v3}, [Ljava/lang/Class;

    move-result-object v3

    .line 879
    invoke-static {v1, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 880
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 881
    const-string p1, "android.app.ActivityTaskManager$RootTaskInfo"

    invoke-static {p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 882
    const-string p2, "topActivity"

    invoke-static {p1, p2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-eqz p1, :cond_3c

    .line 885
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    goto :goto_3d

    :catch_3a
    move-exception p0

    goto :goto_4e

    :cond_3c
    move-object p0, v0

    .line 887
    :goto_3d
    new-instance p1, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;

    invoke-direct {p1}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;-><init>()V

    if-eqz p0, :cond_49

    .line 888
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4a

    :cond_49
    move-object p0, v0

    :goto_4a
    invoke-virtual {p1, p0}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setTopActivityString(Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4d} :catch_3a

    return-object p1

    .line 891
    :goto_4e
    sget-object p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getRootTaskInfoOnDisplay fail: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getStackInfoTaskId(Ljava/lang/String;)I
    .registers 6

    .line 360
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getAllRootTaskInfosList()Ljava/util/List;

    move-result-object v0

    .line 361
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 363
    invoke-direct {p0, v1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getStackInfoPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 365
    invoke-direct {p0, v1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getConfiguration(Ljava/lang/Object;)Landroid/content/res/Configuration;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 368
    invoke-static {p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getWindowConfiguration(Landroid/content/res/Configuration;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 371
    invoke-static {p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getWindowingMode(Ljava/lang/Object;)I

    move-result p1

    goto :goto_2f

    :cond_2e
    move p1, v2

    :goto_2f
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4d

    .line 376
    invoke-direct {p0, v1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getTaskId(Ljava/lang/Object;)I

    move-result p0

    .line 377
    sget-object p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "taskId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_4d
    return v2
.end method

.method public getTaskBounds(I)Landroid/graphics/Rect;
    .registers 5

    .line 1123
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getTaskBounds"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1124
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1126
    instance-of p1, p0, Landroid/graphics/Rect;

    if-eqz p1, :cond_23

    .line 1127
    check-cast p0, Landroid/graphics/Rect;

    return-object p0

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTaskIdByPkg(Ljava/lang/String;)I
    .registers 7

    .line 541
    const-string v0, "_twin_app"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x3e7

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const/4 v1, -0x1

    .line 545
    :try_start_d
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getAllRootTaskInfosList()Ljava/util/List;

    move-result-object v2

    .line 546
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 547
    invoke-direct {p0, v3}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getStackInfoPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {p0, v3}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getUserId(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, v0, :cond_15

    .line 548
    invoke-direct {p0, v3}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getTaskId(Ljava/lang/Object;)I

    move-result p0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_33} :catch_34

    return p0

    :catch_34
    move-exception p0

    goto :goto_37

    :cond_36
    return v1

    .line 553
    :goto_37
    sget-object p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTaskIdByPkg, exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getTaskIdByPkgName(Ljava/lang/String;I)I
    .registers 6

    .line 1464
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getTaskIdByPkgName"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 1466
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_2d

    .line 1467
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1468
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_2d

    .line 1469
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2d
    const/4 p0, -0x1

    return p0
.end method

.method public getTaskOrientation(I)I
    .registers 5

    .line 980
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getTaskOrientation"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 981
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 983
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_27

    .line 984
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public getTasks(IZZ)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 1098
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "getTasks"

    if-eqz v0, :cond_32

    .line 1099
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    filled-new-array {v2, v1, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1100
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, p2, p3, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_52

    .line 1102
    :cond_32
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    filled-new-array {v2, v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1103
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1105
    :goto_52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1106
    instance-of p2, p0, Ljava/util/List;

    if-eqz p2, :cond_77

    .line 1107
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_61
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_77

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 1108
    const-class p3, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_61

    :cond_77
    return-object p1
.end method

.method public getTopActivityComponent()Landroid/content/ComponentName;
    .registers 5

    .line 97
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getTopActivityComponent"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 98
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 100
    instance-of v0, p0, Landroid/content/ComponentName;

    if-eqz v0, :cond_1a

    .line 101
    check-cast p0, Landroid/content/ComponentName;

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTopAppWindowInfo()Landroid/os/Bundle;
    .registers 5

    .line 1421
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getTopAppWindowInfo"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1422
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_1a

    .line 1423
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0

    .line 1425
    :cond_1a
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    const-string v0, "Method getTopAppWindowInfo not found in sClass or mObject is null"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTopTask(I)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 5

    .line 991
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getTopTask"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 992
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 994
    instance-of p1, p0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p1, :cond_23

    .line 995
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUserId(Ljava/lang/Object;)I
    .registers 5

    const/4 v0, 0x0

    .line 807
    :try_start_1
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getRootTaskInfoClass()Ljava/lang/Class;

    move-result-object p0

    .line 808
    const-string v1, "userId"

    invoke-static {p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 809
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 811
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_1c

    .line 812
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1a

    return p0

    :catch_1a
    move-exception p0

    goto :goto_1d

    :cond_1c
    return v0

    .line 816
    :goto_1d
    sget-object p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserId, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getVideoNotFullscreen(Ljava/lang/String;)Z
    .registers 6

    .line 489
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x2

    .line 490
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 491
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_13

    .line 492
    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 494
    invoke-direct {p0, v1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getRunningTaskInfoConfiguration(Ljava/lang/Object;)Landroid/content/res/Configuration;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 496
    invoke-static {v1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getWindowConfiguration(Landroid/content/res/Configuration;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 498
    invoke-static {v1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getWindowingMode(Ljava/lang/Object;)I

    move-result p0

    .line 499
    sget-object p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVideoNotFullscreen  mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p0, v2, :cond_59

    return v2

    :cond_59
    const/4 p0, 0x0

    return p0

    :cond_5b
    return v2
.end method

.method public hasMultiWindow()Z
    .registers 5

    .line 616
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sManagerClassName:Ljava/lang/Class;

    const-class v0, Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getService"

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 617
    const-string v0, "activity_task"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 618
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClassNameStub:Ljava/lang/Class;

    const-class v2, Landroid/os/IBinder;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "asInterface"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 619
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_44

    .line 622
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hasMultiWindow"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 623
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 626
    :cond_44
    instance-of p0, v1, Ljava/lang/Boolean;

    if-eqz p0, :cond_4f

    .line 627
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_4f
    return v0
.end method

.method public hookGetMultiWindowDefaultRect(I)Landroid/graphics/Rect;
    .registers 5

    .line 153
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hookGetMultiWindowDefaultRect"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 154
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 156
    instance-of p1, p0, Landroid/graphics/Rect;

    if-eqz p1, :cond_23

    .line 157
    check-cast p0, Landroid/graphics/Rect;

    return-object p0

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public hookMultiWindowToExchange(II)V
    .registers 6

    .line 1456
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hookMultiWindowToExchange"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 1457
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_23

    .line 1458
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    return-void
.end method

.method public hookMultiWindowVisible()V
    .registers 5

    .line 1364
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "hookMultiWindowVisible"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1365
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_16

    .line 1366
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-void
.end method

.method public hookReparentToDefaultDisplay(II)V
    .registers 6

    .line 1002
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hookReparentToDefaultDisplay"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1003
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public hookSetMultiWindowDefaultRectResult(Landroid/graphics/Rect;)V
    .registers 5

    .line 1008
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Landroid/graphics/Rect;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hookSetMultiWindowDefaultRectResult"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1009
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public hookShowBlurLayer(Landroid/view/SurfaceControl;Ljava/lang/String;)V
    .registers 6

    .line 1388
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Landroid/view/SurfaceControl;

    const-class v2, Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hookShowBlurLayer"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 1389
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_1d

    .line 1390
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    return-void
.end method

.method public hookShowBlurLayerFinish()V
    .registers 5

    .line 1014
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "hookShowBlurLayerFinish"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1015
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public hookStartActivityResult(ILandroid/graphics/Rect;)V
    .registers 6

    .line 1020
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Landroid/graphics/Rect;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hookStartActivityResult"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1021
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public hookStartMultiWindow(ILandroid/graphics/Rect;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V
    .registers 5

    if-eqz p3, :cond_d

    .line 165
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mActivityTaskExt:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt;

    new-instance v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt;->hookStartMultiWindow(ILandroid/graphics/Rect;Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt$TranWindowContainerTransactionCallback;)V

    return-void

    .line 167
    :cond_d
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mActivityTaskExt:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt;

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt;->hookStartMultiWindow(ILandroid/graphics/Rect;Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt$TranWindowContainerTransactionCallback;)V

    return-void
.end method

.method public hookStartMultiWindowAndMakeOwnAnimation(IIILandroid/graphics/Rect;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V
    .registers 12

    if-eqz p5, :cond_e

    .line 1152
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mActivityTaskExt:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt;

    move-object v0, p5

    new-instance p5, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager$$ExternalSyntheticLambda0;

    invoke-direct {p5, v0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt;->hookStartMultiWindowAndMakeOwnAnimation(IIILandroid/graphics/Rect;Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt$TranWindowContainerTransactionCallback;)V

    goto :goto_18

    .line 1154
    :cond_e
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mActivityTaskExt:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt;

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt;->hookStartMultiWindowAndMakeOwnAnimation(IIILandroid/graphics/Rect;Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt$TranWindowContainerTransactionCallback;)V

    .line 1156
    :goto_18
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "hookStartMultiWindowAndMakeOwnAnimation success"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public hookToMultiWindow(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    .line 1502
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    const-class v2, Landroid/os/Bundle;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hookToMultiWindow"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 1503
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_21

    .line 1504
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public inMultiWindowMode()Z
    .registers 5

    .line 142
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "inMultiWindowMode"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 143
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 145
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1e

    .line 146
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1e
    return v1
.end method

.method public isIMEShowing()Z
    .registers 5

    .line 131
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "isIMEShowing"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 132
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 134
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1e

    .line 135
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1e
    return v1
.end method

.method public isKeyguardLocking()Z
    .registers 5

    .line 1026
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "isKeyguardLocking"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1027
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1029
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1e

    .line 1030
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1e
    return v1
.end method

.method public isPinnedMode()Z
    .registers 5

    .line 1037
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "isPinnedMode"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1038
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1040
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1e

    .line 1041
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1e
    return v1
.end method

.method public isSecureWindow()Z
    .registers 5

    .line 1140
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "isSecureWindow"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1141
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1143
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1e

    .line 1144
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1e
    return v1
.end method

.method public isSplitScreen()Z
    .registers 5

    .line 330
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 331
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "isSplitScreen"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-static {v0, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 332
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 333
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_24

    .line 334
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_24
    return v1
.end method

.method public isSupportMultiWindow()Z
    .registers 5

    .line 173
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "isSupportMultiWindow"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 174
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 176
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1e

    .line 177
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1e
    return v1
.end method

.method public isTheMainScreen(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .line 393
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    .line 398
    :try_start_9
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getAllRootTaskInfosList()Ljava/util/List;

    move-result-object v2

    .line 400
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 401
    invoke-direct {p0, v4, p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->isStackInfoTopClassName(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2b

    invoke-direct {p0, v4, p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getStackInfoClsName(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_2b

    :catch_28
    move-exception p0

    move p1, v0

    goto :goto_61

    .line 402
    :cond_2b
    :goto_2b
    invoke-direct {p0, v4}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getTaskInfoDisplayId(Ljava/lang/Object;)I

    move-result p1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2f} :catch_28

    move v3, v1

    goto :goto_33

    :cond_31
    move p1, v0

    move v3, p1

    :goto_33
    if-nez v3, :cond_77

    .line 408
    :try_start_35
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 409
    invoke-direct {p0, v3}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getStackInfoPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    const-string v4, "com.facebook.orca"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5c

    .line 410
    invoke-direct {p0, v3}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getTaskInfoDisplayId(Ljava/lang/Object;)I

    move-result p1

    goto :goto_77

    :catch_5a
    move-exception p0

    goto :goto_61

    .line 413
    :cond_5c
    invoke-direct {p0, v3}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getTaskInfoDisplayId(Ljava/lang/Object;)I

    move-result p1
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_60} :catch_5a

    goto :goto_39

    .line 417
    :goto_61
    sget-object p2, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTheMainScreen, exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    :goto_77
    if-nez p1, :cond_7a

    goto :goto_7b

    :cond_7a
    move v1, v0

    :goto_7b
    return v1
.end method

.method public notAllowKeyguardGoingAwayQuickly(Z)V
    .registers 5

    .line 1281
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "notAllowKeyguardGoingAwayQuickly"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 1283
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    return-void
.end method

.method public notifyAuthenticateSucceed(Z)V
    .registers 5

    .line 1402
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "notifyAuthenticateSucceed"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1403
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_1f

    .line 1404
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-void
.end method

.method public notifyKeyguardGoingAwayQuickly(Z)V
    .registers 5

    .line 1395
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "notifyKeyguardGoingAwayQuickly"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1396
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_1f

    .line 1397
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-void
.end method

.method public notifyLauncherPageTurning(Z)V
    .registers 5

    .line 1307
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "notifyLauncherPageTurning"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1308
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_1f

    .line 1309
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-void
.end method

.method public registerMultiWindowWmShellListener(Landroid/os/IBinder;)V
    .registers 5

    .line 1494
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Landroid/os/IBinder;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "registerMultiWindowWmShellListener"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1495
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_1b

    .line 1496
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    return-void
.end method

.method public removeAnimationIconLayer(Landroid/view/SurfaceControl;)V
    .registers 5

    .line 1116
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Landroid/view/SurfaceControl;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "removeAnimationIconLayer"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1117
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeRootTasksInWindowingModes([I)V
    .registers 5

    .line 295
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz v0, :cond_1d

    .line 296
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [I

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "removeRootTasksInWindowingModes"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 297
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    return-void
.end method

.method public removeTask(I)Z
    .registers 5

    .line 109
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "removeTask"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 110
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 112
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_27

    .line 113
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public reparentActivity(IIZ)V
    .registers 7

    .line 321
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz v0, :cond_2b

    .line 322
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "reparentActivity"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 323
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    return-void
.end method

.method public reparentTaskToDefaultTDA()V
    .registers 5

    .line 1478
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "reparentTaskToDefaultTDA"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1479
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_16

    .line 1480
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-void
.end method

.method public setActivityController(Lcom/transsion/hubsdk/api/app/ITranActivityController;Z)V
    .registers 5

    .line 236
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mController:Lcom/transsion/hubsdk/api/app/ITranActivityController;

    .line 237
    sget-object p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v0, Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setActivityController"

    invoke-static {p1, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 238
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    new-instance v1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager$TranActivityControllerExt;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager$TranActivityControllerExt;-><init>(Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;)V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setBoostSceneState(ILjava/lang/String;Z)V
    .registers 8

    .line 1335
    const-string p0, "com.transsion.hubsdk.TranServiceManager"

    invoke-static {p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_64

    .line 1337
    const-string v0, "getServiceIBinder"

    const-class v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_64

    .line 1339
    const-string v0, "activity_task"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    .line 1340
    const-string v0, "com.transsion.hubsdk.app.ITranActivityTaskManager$Stub"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz p0, :cond_64

    if-eqz v0, :cond_64

    .line 1342
    const-class v2, Landroid/os/IBinder;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "asInterface"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1343
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, v0, p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_64

    .line 1345
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v1, v3}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setBoostSceneState"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1346
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_64
    return-void
.end method

.method public setConnectBlackListToSystem(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz v0, :cond_1d

    .line 343
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/List;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setConnectBlackListToSystem"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 344
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    return-void
.end method

.method public setFinishFixedRotationWithTransaction(Landroid/view/SurfaceControl;[F[FI)V
    .registers 9

    .line 1048
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, [F

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Landroid/view/SurfaceControl;

    filled-new-array {v3, v1, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setFinishFixedRotationWithTransaction"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1049
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setJankScenarioState(ILjava/lang/String;Z)V
    .registers 8

    .line 1315
    const-string p0, "com.transsion.hubsdk.TranServiceManager"

    invoke-static {p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_64

    .line 1317
    const-string v0, "getServiceIBinder"

    const-class v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_64

    .line 1319
    const-string v0, "activity_task"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    .line 1320
    const-string v0, "com.transsion.hubsdk.app.ITranActivityTaskManager$Stub"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz p0, :cond_64

    if-eqz v0, :cond_64

    .line 1322
    const-class v2, Landroid/os/IBinder;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "asInterface"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1323
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, v0, p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_64

    .line 1325
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v1, v3}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setJankScenarioState"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1326
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_64
    return-void
.end method

.method public setMultiEnableStateForOOBE(ZLandroid/os/Bundle;)V
    .registers 6

    .line 1486
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Landroid/os/Bundle;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setMultiEnableStateForOOBE"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 1487
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_21

    .line 1488
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    return-void
.end method

.method public setMultiWindowAcquireFocus(IZ)V
    .registers 6

    .line 1054
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setMultiWindowAcquireFocus"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1055
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMultiWindowBlackListToSystem(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1060
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Ljava/util/List;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setMultiWindowBlackListToSystem"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1061
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMultiWindowConfigToSystem(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1066
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/util/List;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setMultiWindowConfigToSystem"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1067
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMultiWindowExtendSize(II)V
    .registers 6

    .line 1432
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setMultiWindowExtendSize"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 1433
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_23

    .line 1434
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    return-void
.end method

.method public setMultiWindowParams(Landroid/os/Bundle;)V
    .registers 5

    .line 1167
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Landroid/os/Bundle;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setMultiWindowParams"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1168
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMultiWindowWhiteListToSystem(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1072
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Ljava/util/List;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setMultiWindowWhiteListToSystem"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1073
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMuteStateV4(ZI)V
    .registers 6

    .line 1078
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setMuteStateV4"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1079
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setStartInMultiWindow(Ljava/lang/String;III)V
    .registers 8

    .line 898
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2, v2, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setStartInMultiWindow"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 900
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setStartInMultiWindowAsUser(Ljava/lang/String;IIII)V
    .registers 9

    .line 905
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2, v2, v2, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setStartInMultiWindowAsUser"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 907
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    filled-new-array {p1, p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setStartInMultiWindowWithBundle(Landroid/os/Bundle;IIII)V
    .registers 9

    .line 1538
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Landroid/os/Bundle;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2, v2, v2, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setStartInMultiWindowWithBundle"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 1539
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_2d

    .line 1540
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    filled-new-array {p1, p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    return-void
.end method

.method public setTbSpecialLayerState(ZI)V
    .registers 6

    .line 1161
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setTbSpecialLayerState"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1162
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setThunderbackAnimating(Z)V
    .registers 5

    .line 1448
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setThunderbackAnimating"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1449
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_1f

    .line 1450
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-void
.end method

.method public startCurrentAppInMultiWindow(ZI)V
    .registers 6

    .line 184
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "startCurrentAppInMultiWindow"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 185
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public takeTaskSnapshot(IZ)Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;
    .registers 7

    .line 1175
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isAndroidT()Z

    move-result v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "takeTaskSnapshot"

    if-eqz v0, :cond_23

    .line 1176
    sget-object p2, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {p2, v2, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 1177
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_49

    .line 1178
    :cond_23
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1179
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v3}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1180
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_49

    :cond_48
    const/4 p0, 0x0

    .line 1183
    :goto_49
    new-instance p1, Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;

    invoke-direct {p1}, Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;-><init>()V

    if-nez p0, :cond_58

    .line 1185
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p2, "TranTaskSnapshot is null"

    invoke-static {p0, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 1188
    :cond_58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sTaskSnapshotClass:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_99

    .line 1189
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "getHardwareBuffer"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-static {p2, v0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 1190
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2, p0, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 1191
    instance-of v0, p2, Landroid/hardware/HardwareBuffer;

    if-eqz v0, :cond_7f

    .line 1192
    check-cast p2, Landroid/hardware/HardwareBuffer;

    iput-object p2, p1, Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    .line 1194
    :cond_7f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "getColorSpace"

    new-array v2, v1, [Ljava/lang/Class;

    invoke-static {p2, v0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 1195
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2, p0, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1196
    instance-of p2, p0, Landroid/graphics/ColorSpace;

    if-eqz p2, :cond_99

    .line 1197
    check-cast p0, Landroid/graphics/ColorSpace;

    iput-object p0, p1, Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    :cond_99
    return-object p1
.end method

.method public taskInMultiWindowById(I)Z
    .registers 5

    .line 201
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "taskInMultiWindowById"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 202
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 204
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_27

    .line 205
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)Z
    .registers 5

    .line 1269
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Landroid/content/res/Configuration;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "updateConfiguration"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1270
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1272
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_23

    .line 1273
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public updateMediaMapForDynamicIsland(Ljava/lang/String;Z)V
    .registers 6

    .line 1410
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "updateMediaMapForDynamicIsland"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 1411
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_22

    .line 1412
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1414
    :cond_22
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "Method updateMediaMapForDynamicIsland not found in sClass or mObject is null"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateZBoostTaskIdWhenToSplit(I)V
    .registers 5

    .line 1084
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "updateZBoostTaskIdWhenToSplit"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1085
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

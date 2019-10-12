.class public Lcom/msec/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# static fields
.field private static patchLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 221
    const/4 v0, 0x0

    sput-object v0, Lcom/msec/Helper;->patchLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callConstructor(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 134
    .local p0, "targetCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "cls":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 135
    .local v0, "all":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 136
    .local v1, "m":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 137
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 150
    .end local v0    # "all":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v1    # "m":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/InstantiationException;
    sget-boolean v1, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 152
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 146
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-boolean v1, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 142
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-boolean v1, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sget-boolean v1, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 154
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_0
    nop

    .line 156
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static callConstructor(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "method"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 160
    .local p2, "cls":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/msec/Helper;->callConstructor(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "method"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 92
    .local p2, "cls":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 93
    .local v0, "m":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 94
    invoke-virtual {v0, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 103
    .end local v0    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-boolean v1, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 105
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 99
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-boolean v1, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 95
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sget-boolean v1, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 107
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_0
    nop

    .line 108
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 113
    .local p0, "obj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "cls":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 114
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 115
    invoke-virtual {v1, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 124
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/IllegalAccessException;
    sget-boolean v2, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 126
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 120
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-boolean v2, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 122
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 116
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    sget-boolean v2, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 118
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 128
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_0
    nop

    .line 129
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static findClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 205
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sget-boolean v1, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 211
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 287
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/msec/MLog;->logd(Ljava/lang/String;)V

    .line 291
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getHiddenField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;

    .line 296
    :try_start_0
    const-class v0, Ljava/lang/Class;

    const-string v1, "getDeclaredField"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 297
    .local v0, "method":Ljava/lang/reflect/Method;
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 298
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 300
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getHiddenMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 7
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljava/lang/Class;

    .line 305
    :try_start_0
    const-class v0, Ljava/lang/Class;

    const-string v1, "getDeclaredMethod"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, [Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 306
    .local v0, "method":Ljava/lang/reflect/Method;
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    aput-object p2, v1, v6

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 307
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 309
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMember(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "member"    # Ljava/lang/String;

    .line 165
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 166
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 168
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 169
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 170
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 174
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/IllegalAccessException;
    sget-boolean v2, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 176
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 178
    :cond_0
    goto :goto_1

    .line 171
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 172
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 173
    goto :goto_0

    .line 181
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 182
    new-instance v1, Ljava/lang/NoSuchFieldException;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 183
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public static injectAssetJar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetName"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 262
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/msec/Helper;->loadAssetJar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 263
    .local v0, "classLoader2":Ljava/lang/ClassLoader;
    const-string v1, "dalvik.system.BaseDexClassLoader"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 264
    .local v1, "clsBaseDexClassLoader":Ljava/lang/Class;
    const-string v2, "pathList"

    invoke-static {v1, v2}, Lcom/msec/Helper;->getHiddenField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 265
    .local v2, "fPathList":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 266
    const-string v4, "dalvik.system.DexPathList"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 267
    .local v4, "clsDexPathList":Ljava/lang/Class;
    const-string v5, "dexElements"

    invoke-static {v4, v5}, Lcom/msec/Helper;->getHiddenField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 268
    .local v5, "fDexElements":Ljava/lang/reflect/Field;
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 269
    invoke-virtual {v2, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 270
    .local v3, "pathList1":Ljava/lang/Object;
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    .line 271
    .local v6, "dexElements1":[Ljava/lang/Object;
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 272
    .local v7, "pathList2":Ljava/lang/Object;
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Object;

    .line 273
    .local v8, "dexElements2":[Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v9

    array-length v10, v6

    array-length v11, v8

    add-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    .line 275
    .local v9, "dexElements":[Ljava/lang/Object;
    array-length v10, v8

    const/4 v11, 0x0

    invoke-static {v8, v11, v9, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    array-length v10, v8

    array-length v12, v6

    invoke-static {v6, v11, v9, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    invoke-virtual {v5, v3, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 278
    invoke-static {p2}, Lcom/msec/MSecClient;->createGlobalRef(Ljava/lang/Object;)V

    .line 279
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/msec/MLog;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .end local v0    # "classLoader2":Ljava/lang/ClassLoader;
    .end local v1    # "clsBaseDexClassLoader":Ljava/lang/Class;
    .end local v2    # "fPathList":Ljava/lang/reflect/Field;
    .end local v3    # "pathList1":Ljava/lang/Object;
    .end local v4    # "clsDexPathList":Ljava/lang/Class;
    .end local v5    # "fDexElements":Ljava/lang/reflect/Field;
    .end local v6    # "dexElements1":[Ljava/lang/Object;
    .end local v7    # "pathList2":Ljava/lang/Object;
    .end local v8    # "dexElements2":[Ljava/lang/Object;
    .end local v9    # "dexElements":[Ljava/lang/Object;
    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/msec/MLog;->loge(Ljava/lang/String;)V

    .line 283
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static loadAssetJar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetName"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 232
    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p0, Landroid/app/Application;

    if-nez v1, :cond_0

    .line 233
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object p0, v1

    .line 235
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "cachePath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".jar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "jarFile":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 238
    .local v3, "inputStream":Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 239
    .local v4, "outputStream":Ljava/io/OutputStream;
    const/16 v5, 0x1000

    new-array v5, v5, [B

    .line 240
    .local v5, "buffer":[B
    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v6

    if-lez v6, :cond_2

    .line 241
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 242
    .local v6, "bytes":I
    if-lez v6, :cond_1

    .line 243
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 245
    .end local v6    # "bytes":I
    :cond_1
    goto :goto_0

    .line 246
    :cond_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 247
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 249
    new-instance v6, Ldalvik/system/DexClassLoader;

    invoke-direct {v6, v2, v1, v0, p2}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 251
    .local v6, "classLoader2":Ldalvik/system/DexClassLoader;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 252
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".dex"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    return-object v6

    .line 254
    .end local v1    # "cachePath":Ljava/lang/String;
    .end local v2    # "jarFile":Ljava/lang/String;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .end local v5    # "buffer":[B
    .end local v6    # "classLoader2":Ldalvik/system/DexClassLoader;
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/msec/MLog;->loge(Ljava/lang/String;)V

    .line 257
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public static loadPatch(Landroid/content/Context;)Ljava/lang/ClassLoader;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 224
    sget-object v0, Lcom/msec/Helper;->patchLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    .line 225
    const-string v0, "patch"

    const-class v1, Lcom/msec/Helper;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/msec/Helper;->loadAssetJar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/msec/Helper;->patchLoader:Ljava/lang/ClassLoader;

    .line 227
    :cond_0
    sget-object v0, Lcom/msec/Helper;->patchLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static reserveAccu(FI)F
    .locals 4
    .param p0, "in"    # F
    .param p1, "digit"    # I

    .line 34
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/16 v0, 0x8

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    .line 38
    .local v0, "num":J
    long-to-float v2, v0

    mul-float v2, v2, p0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    long-to-float v3, v0

    div-float/2addr v2, v3

    return v2

    .line 35
    .end local v0    # "num":J
    :cond_1
    :goto_0
    return p0
.end method

.method public static setMember(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "member"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;

    .line 188
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 189
    .local v0, "f":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 190
    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    .end local v0    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-boolean v1, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 197
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 191
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    sget-boolean v1, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 199
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :cond_0
    :goto_0
    nop

    .line 200
    :cond_1
    :goto_1
    return-void
.end method

.method public static syncMember(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "orig"    # Ljava/lang/Object;
    .param p1, "newer"    # Ljava/lang/Object;
    .param p2, "member"    # Ljava/lang/String;

    .line 43
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 44
    .local v0, "fNewer":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 47
    .local v2, "fOlder":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 49
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    .end local v0    # "fNewer":Ljava/lang/reflect/Field;
    .end local v2    # "fOlder":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    sget-boolean v1, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 56
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 50
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-boolean v1, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 58
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    :goto_0
    nop

    .line 60
    :cond_1
    :goto_1
    return-void
.end method

.method public static syncMemberSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 9
    .param p0, "orig"    # Ljava/lang/Object;
    .param p1, "newer"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 64
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 65
    .local v3, "f":Ljava/lang/reflect/Field;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 66
    .local v4, "newField":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 69
    .local v6, "oldField":Ljava/lang/reflect/Field;
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 71
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 72
    const-string v5, "Helper:"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sync field "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " old="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " new="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 74
    :cond_0
    const-string v5, "Helper:"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": type is diff for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    nop

    .line 64
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "newField":Ljava/lang/reflect/Field;
    .end local v6    # "oldField":Ljava/lang/reflect/Field;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    sget-boolean v1, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 85
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_2

    .line 79
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-boolean v1, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 81
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 87
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    nop

    .line 88
    :cond_2
    :goto_2
    return-void
.end method

.method public static varargs viClass([Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 215
    .local p0, "cls":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    return-object p0
.end method

.method public static varargs viObject([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .param p0, "objs"    # [Ljava/lang/Object;

    .line 218
    return-object p0
.end method


# virtual methods
.method public bmF0aXZlRmlVyUHJ()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 30
    invoke-static {}, Lcom/msec/MSecClient;->_ts_getFingerPrint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

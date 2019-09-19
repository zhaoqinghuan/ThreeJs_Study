//  顶点着色器的文件
//  varying vec2 vUv;同样声明了从顶点着色器传递到片元着色器中的vUv属性，记得要在片元着色器中再写一遍。
//  主程序只有gl_FragColor = vec4(vUv.x, vUv.y, 1.0, 1.0);，gl_FragColor用来设置片元的颜色，vec4的四个维度分别表示红、绿、蓝以及alpha通道。
varying vec2 vUv;
void main()
{    
    // passing texture to fragment shader
    vUv = uv;
    
    gl_Position = projectionMatrix * modelViewMatrix * vec4(position, 1.0);
}